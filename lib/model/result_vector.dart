/*
 * Copyright (c) 2024. Crucible Labs Inc.
 *
 * Crucible is a closed source project developed by Crucible Labs Inc.
 * Do not copy, share distribute or otherwise allow this source file
 * to leave hardware approved by Crucible Labs Inc. unless otherwise
 * approved by Crucible Labs Inc.
 */

import 'package:dart_mappable/dart_mappable.dart';

part 'result_vector.mapper.dart';

// https://docs.pinecone.io/reference/api/2025-01/data-plane/fetch
@MappableClass()
class ResultVector with ResultVectorMappable {
  final List<double> values;
  final String id;
  final Map<String, dynamic> metadata;

  ResultVector({
    this.values = const [],
    required this.id,
    this.metadata = const {},
  });
}
