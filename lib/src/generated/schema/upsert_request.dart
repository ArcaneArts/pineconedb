// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// OPEN API SPECIFICATION: 3.1.0
// API TITLE: Pinecone API
// API VERSION: 6385160b2d80c50016823ac4

part of pinecone_schema;

// ==========================================
// CLASS: UpsertRequest
// ==========================================

/// No Description
@freezed
class UpsertRequest with _$UpsertRequest {
  const UpsertRequest._();

  const factory UpsertRequest({
    /// An array containing the vectors to upsert.
    required List<Vector> vectors,

    /// This is the namespace name where you upsert vectors.
    String? namespace,
  }) = _UpsertRequest;

  /// Object construction from a JSON representation
  factory UpsertRequest.fromJson(Map<String, dynamic> json) =>
      _$UpsertRequestFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = ['vectors', 'namespace'];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'vectors': vectors,
      'namespace': namespace,
    };
  }
}
