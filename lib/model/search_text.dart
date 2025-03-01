/*
 * Copyright (c) 2024. Crucible Labs Inc.
 *
 * Crucible is a closed source project developed by Crucible Labs Inc.
 * Do not copy, share distribute or otherwise allow this source file
 * to leave hardware approved by Crucible Labs Inc. unless otherwise
 * approved by Crucible Labs Inc.
 */

import 'package:dart_mappable/dart_mappable.dart';

part 'search_text.mapper.dart';

/// https://docs.pinecone.io/reference/api/2025-01/data-plane/search_records
@MappableClass()
class SearchText with SearchTextMappable {
  final List<String> returnFields;
  final Map<String, dynamic> inputs;
  final int topK;
  final int rerankTopK;
  final String rerankModel;
  final String? rerankInput;
  final List<String>? rerankReturnFields;

  SearchText({
    required this.returnFields,
    required this.inputs,
    this.topK = 10,
    this.rerankTopK = 5,
    this.rerankModel = "bge-reranker-v2-m3",
    this.rerankInput,
    this.rerankReturnFields,
  });

  factory SearchText.basic({
    required String query,
    required String textKey,
    bool rerank = true,
    int topK = 10,
    int rerankTopK = 5,
    String rerankModel = "bge-reranker-v2-m3",
  }) =>
      SearchText(
        returnFields: [
          textKey,
        ],
        inputs: {
          textKey: query,
        },
        topK: topK,
        rerankTopK: rerankTopK,
        rerankModel: rerankModel,
        rerankInput: rerank ? query : null,
        rerankReturnFields: [
          textKey,
        ],
      );

  Map<String, dynamic> toPMap() {
    return {
      "query": {
        "inputs": inputs,
        "top_k": topK,
      },
      "fields": returnFields,
      if (rerankInput != null &&
          rerankReturnFields != null &&
          rerankInput!.isNotEmpty &&
          rerankReturnFields!.isNotEmpty)
        "rerank": {
          "top_n": rerankTopK,
          "model": rerankModel,
          "query": rerankInput,
          "rank_fields": rerankReturnFields,
        },
    };
  }
}
