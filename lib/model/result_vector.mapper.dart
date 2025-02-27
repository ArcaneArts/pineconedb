// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'result_vector.dart';

class ResultVectorMapper extends ClassMapperBase<ResultVector> {
  ResultVectorMapper._();

  static ResultVectorMapper? _instance;
  static ResultVectorMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ResultVectorMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ResultVector';

  static List<double> _$values(ResultVector v) => v.values;
  static const Field<ResultVector, List<double>> _f$values =
      Field('values', _$values, opt: true, def: const []);
  static String _$id(ResultVector v) => v.id;
  static const Field<ResultVector, String> _f$id = Field('id', _$id);
  static Map<String, dynamic> _$metadata(ResultVector v) => v.metadata;
  static const Field<ResultVector, Map<String, dynamic>> _f$metadata =
      Field('metadata', _$metadata, opt: true, def: const {});

  @override
  final MappableFields<ResultVector> fields = const {
    #values: _f$values,
    #id: _f$id,
    #metadata: _f$metadata,
  };

  static ResultVector _instantiate(DecodingData data) {
    return ResultVector(
        values: data.dec(_f$values),
        id: data.dec(_f$id),
        metadata: data.dec(_f$metadata));
  }

  @override
  final Function instantiate = _instantiate;

  static ResultVector fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ResultVector>(map);
  }

  static ResultVector fromJson(String json) {
    return ensureInitialized().decodeJson<ResultVector>(json);
  }
}

mixin ResultVectorMappable {
  String toJson() {
    return ResultVectorMapper.ensureInitialized()
        .encodeJson<ResultVector>(this as ResultVector);
  }

  Map<String, dynamic> toMap() {
    return ResultVectorMapper.ensureInitialized()
        .encodeMap<ResultVector>(this as ResultVector);
  }

  ResultVectorCopyWith<ResultVector, ResultVector, ResultVector> get copyWith =>
      _ResultVectorCopyWithImpl(this as ResultVector, $identity, $identity);
  @override
  String toString() {
    return ResultVectorMapper.ensureInitialized()
        .stringifyValue(this as ResultVector);
  }

  @override
  bool operator ==(Object other) {
    return ResultVectorMapper.ensureInitialized()
        .equalsValue(this as ResultVector, other);
  }

  @override
  int get hashCode {
    return ResultVectorMapper.ensureInitialized()
        .hashValue(this as ResultVector);
  }
}

extension ResultVectorValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ResultVector, $Out> {
  ResultVectorCopyWith<$R, ResultVector, $Out> get $asResultVector =>
      $base.as((v, t, t2) => _ResultVectorCopyWithImpl(v, t, t2));
}

abstract class ResultVectorCopyWith<$R, $In extends ResultVector, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, double, ObjectCopyWith<$R, double, double>> get values;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
      get metadata;
  $R call({List<double>? values, String? id, Map<String, dynamic>? metadata});
  ResultVectorCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ResultVectorCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ResultVector, $Out>
    implements ResultVectorCopyWith<$R, ResultVector, $Out> {
  _ResultVectorCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ResultVector> $mapper =
      ResultVectorMapper.ensureInitialized();
  @override
  ListCopyWith<$R, double, ObjectCopyWith<$R, double, double>> get values =>
      ListCopyWith($value.values, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(values: v));
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
      get metadata => MapCopyWith($value.metadata,
          (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(metadata: v));
  @override
  $R call({List<double>? values, String? id, Map<String, dynamic>? metadata}) =>
      $apply(FieldCopyWithData({
        if (values != null) #values: values,
        if (id != null) #id: id,
        if (metadata != null) #metadata: metadata
      }));
  @override
  ResultVector $make(CopyWithData data) => ResultVector(
      values: data.get(#values, or: $value.values),
      id: data.get(#id, or: $value.id),
      metadata: data.get(#metadata, or: $value.metadata));

  @override
  ResultVectorCopyWith<$R2, ResultVector, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ResultVectorCopyWithImpl($value, $cast, t);
}
