import 'package:pineconedb/model/search_text.dart';
import 'package:pineconedb/model/upsert_text.dart';
import 'package:pineconedb/pineconedb.dart';

void main() async {
  PineconeClient client =
      PineconeClient(host: "COPY SERVERLESS HOST HERE", apiKey: "YOUR API KEY");

  // Upsert text
  await client.upsertText(namespace: "test", upserts: [
    UpsertText(id: "a.1", properties: {"text": "Hello World1"}),
    UpsertText(id: "a.2", properties: {"text": "Hello World2"}),
    UpsertText(id: "a.3", properties: {"text": "Hello World3"}),
    UpsertText(id: "a.4", properties: {"text": "Hello World4"}),
    UpsertText(id: "b.1", properties: {"text": "Foo Bar"}),
  ]);

  // print client usage so far
  print(client.usage.readUnits);

  // search for text
  print((await client.searchText(
          namespace: "test",
          search: SearchText.basic(
            query: "hello",
            textKey: "text",
          )))
      .toJson());

  // get vectors
  print("---");
  print(await client.getVectors(
      ids: ["a.1", "a.2", "a.5"],
      namespace: "test")); // only returns 2 vectors because a.5 does not exist
  print("---");

  // print client usage so far
  print(client.usage.readUnits);
}
