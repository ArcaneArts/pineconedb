/*
 * Copyright (c) 2024. Crucible Labs Inc.
 *
 * Crucible is a closed source project developed by Crucible Labs Inc.
 * Do not copy, share distribute or otherwise allow this source file
 * to leave hardware approved by Crucible Labs Inc. unless otherwise
 * approved by Crucible Labs Inc.
 */

import 'package:dart_mappable/dart_mappable.dart';
import 'package:pineconedb/model/search_result_hit.dart';

part 'search_result.mapper.dart';

/// https://docs.pinecone.io/reference/api/2025-01/data-plane/search_records
@MappableClass()
class SearchResult with SearchResultMappable {
  final List<SearchResultHit> hits;

  SearchResult({
    this.hits = const [],
  });
}
