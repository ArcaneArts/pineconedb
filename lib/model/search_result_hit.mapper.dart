// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'search_result_hit.dart';

class SearchResultHitMapper extends ClassMapperBase<SearchResultHit> {
  SearchResultHitMapper._();

  static SearchResultHitMapper? _instance;
  static SearchResultHitMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SearchResultHitMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SearchResultHit';

  static String _$id(SearchResultHit v) => v.id;
  static const Field<SearchResultHit, String> _f$id =
      Field('id', _$id, key: r'_id');
  static double _$score(SearchResultHit v) => v.score;
  static const Field<SearchResultHit, double> _f$score =
      Field('score', _$score, key: r'_score', opt: true, def: -10);
  static Map<String, dynamic> _$fields(SearchResultHit v) => v.fields;
  static const Field<SearchResultHit, Map<String, dynamic>> _f$fields =
      Field('fields', _$fields, opt: true, def: const {});

  @override
  final MappableFields<SearchResultHit> fields = const {
    #id: _f$id,
    #score: _f$score,
    #fields: _f$fields,
  };

  static SearchResultHit _instantiate(DecodingData data) {
    return SearchResultHit(
        id: data.dec(_f$id),
        score: data.dec(_f$score),
        fields: data.dec(_f$fields));
  }

  @override
  final Function instantiate = _instantiate;

  static SearchResultHit fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SearchResultHit>(map);
  }

  static SearchResultHit fromJson(String json) {
    return ensureInitialized().decodeJson<SearchResultHit>(json);
  }
}

mixin SearchResultHitMappable {
  String toJson() {
    return SearchResultHitMapper.ensureInitialized()
        .encodeJson<SearchResultHit>(this as SearchResultHit);
  }

  Map<String, dynamic> toMap() {
    return SearchResultHitMapper.ensureInitialized()
        .encodeMap<SearchResultHit>(this as SearchResultHit);
  }

  SearchResultHitCopyWith<SearchResultHit, SearchResultHit, SearchResultHit>
      get copyWith => _SearchResultHitCopyWithImpl(
          this as SearchResultHit, $identity, $identity);
  @override
  String toString() {
    return SearchResultHitMapper.ensureInitialized()
        .stringifyValue(this as SearchResultHit);
  }

  @override
  bool operator ==(Object other) {
    return SearchResultHitMapper.ensureInitialized()
        .equalsValue(this as SearchResultHit, other);
  }

  @override
  int get hashCode {
    return SearchResultHitMapper.ensureInitialized()
        .hashValue(this as SearchResultHit);
  }
}

extension SearchResultHitValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SearchResultHit, $Out> {
  SearchResultHitCopyWith<$R, SearchResultHit, $Out> get $asSearchResultHit =>
      $base.as((v, t, t2) => _SearchResultHitCopyWithImpl(v, t, t2));
}

abstract class SearchResultHitCopyWith<$R, $In extends SearchResultHit, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
      get fields;
  $R call({String? id, double? score, Map<String, dynamic>? fields});
  SearchResultHitCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _SearchResultHitCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SearchResultHit, $Out>
    implements SearchResultHitCopyWith<$R, SearchResultHit, $Out> {
  _SearchResultHitCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SearchResultHit> $mapper =
      SearchResultHitMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
      get fields => MapCopyWith($value.fields,
          (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(fields: v));
  @override
  $R call({String? id, double? score, Map<String, dynamic>? fields}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (score != null) #score: score,
        if (fields != null) #fields: fields
      }));
  @override
  SearchResultHit $make(CopyWithData data) => SearchResultHit(
      id: data.get(#id, or: $value.id),
      score: data.get(#score, or: $value.score),
      fields: data.get(#fields, or: $value.fields));

  @override
  SearchResultHitCopyWith<$R2, SearchResultHit, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SearchResultHitCopyWithImpl($value, $cast, t);
}
