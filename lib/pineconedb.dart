library pineconedb;

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pineconedb/model/result_vector.dart';
import 'package:pineconedb/model/search_result.dart';
import 'package:pineconedb/model/search_text.dart';
import 'package:pineconedb/model/upsert_text.dart';

class PineconeUsage {
  int readUnits = 0;
  int embedTotalTokens = 0;
  int rerankUnits = 0;

  void apply(Map<String, dynamic> body) {
    if (body.containsKey("usage")) {
      Map<String, dynamic> usage = body["usage"];

      if (usage.containsKey("read_units")) {
        readUnits += usage["read_units"] as int;
      }

      if (usage.containsKey("readUnits")) {
        readUnits += usage["readUnits"] as int;
      }

      if (usage.containsKey("embed_total_tokens")) {
        embedTotalTokens += usage["embed_total_tokens"] as int;
      }

      if (usage.containsKey("rerank_units")) {
        rerankUnits += usage["rerank_units"] as int;
      }
    }
  }
}

class PineconeClient {
  final String host;
  final String apiKey;
  final PineconeUsage usage = PineconeUsage();

  PineconeClient({required this.host, required this.apiKey});

  Future<http.Response> post({
    required String path,
    required Object? body,
    Map<String, String> headers = const {},
    Map<String, dynamic> queryParameters = const {},
  }) =>
      http.post(
          Uri.parse("$host$path").replace(
            queryParameters: {
              ...queryParameters,
            },
          ),
          headers: {
            ...headers,
            "Api-Key": apiKey,
          },
          body: body);

  Future<http.Response> get({
    required String path,
    Map<String, String> headers = const {},
    Map<String, dynamic> queryParameters = const {},
  }) =>
      http.get(
          Uri.parse("$host$path").replace(
            queryParameters: {
              ...queryParameters,
            },
          ),
          headers: {
            ...headers,
            "Api-Key": apiKey,
          });

  Stream<String> listVectors({
    required String namespace,
    String? prefix,
    int limit = 100,
  }) async* {
    http.Response r = await get(path: "/vectors/list", queryParameters: {
      if (prefix != null) "prefix": prefix,
      "namespace": namespace,
      "limit": limit.toString(),
    });

    if (!r.ok) {
      throw r;
    }

    Map<String, dynamic> body = jsonDecode(r.body);
    usage.apply(body);
    yield* Stream.fromIterable((body["vectors"] as List<dynamic>)
        .map((i) => (i as Map<String, dynamic>)["id"]));

    if (body["pagination"] != null) {
      String? next = (body["pagination"] as Map<String, dynamic>)["next"];

      while (next != null) {
        r = await get(path: "/vectors/list", queryParameters: {
          if (prefix != null) "prefix": prefix,
          "namespace": namespace,
          "paginationToken": next,
          "limit": limit.toString(),
        });

        if (!r.ok) {
          throw r;
        }

        body = jsonDecode(r.body);
        usage.apply(body);
        yield* Stream.fromIterable((body["vectors"] as List<dynamic>)
            .map((i) => (i as Map<String, dynamic>)["id"]));
        next = body["pagination"] != null
            ? (body["pagination"] as Map<String, dynamic>)["next"]
            : null;
      }
    }
  }

  /// Returns false if it failed
  /// Returns null if RESOURCE_EXHAUSTED 429
  /// Returns true if it succeeded
  Future<bool?> upsertText({
    required String namespace,
    required List<UpsertText> upserts,
  }) =>
      post(
          path: "/records/namespaces/$namespace/upsert",
          body: upserts.map((i) => jsonEncode(i.toPMap())).join("\n"),
          headers: {
            "Content-Type": "application/x-ndjson",
          },
          queryParameters: {}).then((i) {
        if (i.statusCode == 429) {
          return null;
        }

        if (!i.ok) {
          print("${i.statusCode} ${i.body}");
          return false;
        }

        try {
          usage.apply(jsonDecode(i.body));
        } catch (e) {}

        return true;
      });

  Future<ResultVector?> getVector(
          {required String id, required String namespace}) async =>
      get(path: "/vectors/fetch", queryParameters: {
        "namespace": namespace,
        "ids": id,
      }).then((i) {
        if (!i.ok) {
          print("${i.statusCode} ${i.body}");
          throw i;
        }

        try {
          usage.apply(jsonDecode(i.body));
        } catch (e) {}

        Map<String, dynamic> body = jsonDecode(i.body);
        Map<String, dynamic> vectors = body["vectors"];

        if (vectors.isEmpty) {
          return null;
        }

        return ResultVectorMapper.fromMap(vectors[id]);
      });

  Future<List<ResultVector>> getVectors(
          {required List<String> ids, required String namespace}) async =>
      get(path: "/vectors/fetch", queryParameters: {
        "namespace": namespace,
        "ids": ids,
      }).then((i) {
        if (!i.ok) {
          print("${i.statusCode} ${i.body}");
          throw i;
        }

        try {
          usage.apply(jsonDecode(i.body));
        } catch (e) {}

        Map<String, dynamic> body = jsonDecode(i.body);
        Map<String, dynamic> vectors = body["vectors"];

        return vectors.values
            .map((v) => ResultVectorMapper.fromMap(v))
            .toList();
      });

  Future<bool> deleteVectors({
    required String namespace,
    List<String>? ids,
    bool? deleteAll,
  }) =>
      post(
          path: "/vectors/delete",
          body: jsonEncode({
            "namespace": namespace,
            if (deleteAll != null && deleteAll)
              "deleteAll": deleteAll
            else
              "ids": ids!
          }),
          headers: {
            "Content-Type": "application/json",
          },
          queryParameters: {}).then((i) {
        if (!i.ok) {
          print("${i.statusCode} ${i.body}");
          throw i;
        }

        try {
          usage.apply(jsonDecode(i.body));
        } catch (e) {}

        return true;
      });

  Future<SearchResult> searchText({
    required String namespace,
    required SearchText search,
  }) =>
      post(
          path: "/records/namespaces/$namespace/search",
          body: jsonEncode(search.toPMap()),
          headers: {
            "Content-Type": "application/json",
          },
          queryParameters: {}).then((i) {
        if (!i.ok) {
          print("${i.statusCode} ${i.body}");
          throw i;
        }

        try {
          usage.apply(jsonDecode(i.body));
        } catch (e) {}

        return SearchResultMapper.fromMap(jsonDecode(i.body)["result"]);
      });
}

extension IsOk on http.Response {
  bool get ok {
    return (statusCode ~/ 100) == 2;
  }
}
