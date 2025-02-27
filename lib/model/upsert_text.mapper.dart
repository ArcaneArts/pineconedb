// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'upsert_text.dart';

class UpsertTextMapper extends ClassMapperBase<UpsertText> {
  UpsertTextMapper._();

  static UpsertTextMapper? _instance;
  static UpsertTextMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UpsertTextMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'UpsertText';

  static String _$id(UpsertText v) => v.id;
  static const Field<UpsertText, String> _f$id = Field('id', _$id, key: r'_id');
  static Map<String, dynamic> _$properties(UpsertText v) => v.properties;
  static const Field<UpsertText, Map<String, dynamic>> _f$properties =
      Field('properties', _$properties);

  @override
  final MappableFields<UpsertText> fields = const {
    #id: _f$id,
    #properties: _f$properties,
  };

  static UpsertText _instantiate(DecodingData data) {
    return UpsertText(id: data.dec(_f$id), properties: data.dec(_f$properties));
  }

  @override
  final Function instantiate = _instantiate;

  static UpsertText fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UpsertText>(map);
  }

  static UpsertText fromJson(String json) {
    return ensureInitialized().decodeJson<UpsertText>(json);
  }
}

mixin UpsertTextMappable {
  String toJson() {
    return UpsertTextMapper.ensureInitialized()
        .encodeJson<UpsertText>(this as UpsertText);
  }

  Map<String, dynamic> toMap() {
    return UpsertTextMapper.ensureInitialized()
        .encodeMap<UpsertText>(this as UpsertText);
  }

  UpsertTextCopyWith<UpsertText, UpsertText, UpsertText> get copyWith =>
      _UpsertTextCopyWithImpl(this as UpsertText, $identity, $identity);
  @override
  String toString() {
    return UpsertTextMapper.ensureInitialized()
        .stringifyValue(this as UpsertText);
  }

  @override
  bool operator ==(Object other) {
    return UpsertTextMapper.ensureInitialized()
        .equalsValue(this as UpsertText, other);
  }

  @override
  int get hashCode {
    return UpsertTextMapper.ensureInitialized().hashValue(this as UpsertText);
  }
}

extension UpsertTextValueCopy<$R, $Out>
    on ObjectCopyWith<$R, UpsertText, $Out> {
  UpsertTextCopyWith<$R, UpsertText, $Out> get $asUpsertText =>
      $base.as((v, t, t2) => _UpsertTextCopyWithImpl(v, t, t2));
}

abstract class UpsertTextCopyWith<$R, $In extends UpsertText, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
      get properties;
  $R call({String? id, Map<String, dynamic>? properties});
  UpsertTextCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UpsertTextCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UpsertText, $Out>
    implements UpsertTextCopyWith<$R, UpsertText, $Out> {
  _UpsertTextCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UpsertText> $mapper =
      UpsertTextMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
      get properties => MapCopyWith(
          $value.properties,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(properties: v));
  @override
  $R call({String? id, Map<String, dynamic>? properties}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (properties != null) #properties: properties
      }));
  @override
  UpsertText $make(CopyWithData data) => UpsertText(
      id: data.get(#id, or: $value.id),
      properties: data.get(#properties, or: $value.properties));

  @override
  UpsertTextCopyWith<$R2, UpsertText, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _UpsertTextCopyWithImpl($value, $cast, t);
}
