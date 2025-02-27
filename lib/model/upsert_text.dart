/*
 * Copyright (c) 2024. Crucible Labs Inc.
 *
 * Crucible is a closed source project developed by Crucible Labs Inc.
 * Do not copy, share distribute or otherwise allow this source file
 * to leave hardware approved by Crucible Labs Inc. unless otherwise
 * approved by Crucible Labs Inc.
 */

import 'package:dart_mappable/dart_mappable.dart';

part 'upsert_text.mapper.dart';

@MappableClass()
class UpsertText with UpsertTextMappable {
  @MappableField(
    key: "_id",
  )
  final String id;
  final Map<String, dynamic> properties;

  UpsertText({
    required this.id,
    required this.properties,
  });

  Map<String, dynamic> toPMap() {
    Map<String, dynamic> map = toMap();
    return {
      "_id": map["_id"] as String,
      ...map["properties"] as Map<String, dynamic>,
    };
  }
}
