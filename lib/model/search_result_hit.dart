/*
 * Copyright (c) 2024. Crucible Labs Inc.
 *
 * Crucible is a closed source project developed by Crucible Labs Inc.
 * Do not copy, share distribute or otherwise allow this source file
 * to leave hardware approved by Crucible Labs Inc. unless otherwise
 * approved by Crucible Labs Inc.
 */

import 'package:dart_mappable/dart_mappable.dart';

part 'search_result_hit.mapper.dart';

/// https://docs.pinecone.io/reference/api/2025-01/data-plane/search_records
@MappableClass()
class SearchResultHit with SearchResultHitMappable {
  @MappableField(key: "_id")
  final String id;
  @MappableField(key: "_score")
  final double score;
  final Map<String, dynamic> fields;

  SearchResultHit({
    required this.id,
    this.score = -10,
    this.fields = const {},
  });
}
