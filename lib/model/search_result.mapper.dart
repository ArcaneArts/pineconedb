// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'search_result.dart';

class SearchResultMapper extends ClassMapperBase<SearchResult> {
  SearchResultMapper._();

  static SearchResultMapper? _instance;
  static SearchResultMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SearchResultMapper._());
      SearchResultHitMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'SearchResult';

  static List<SearchResultHit> _$hits(SearchResult v) => v.hits;
  static const Field<SearchResult, List<SearchResultHit>> _f$hits =
      Field('hits', _$hits, opt: true, def: const []);

  @override
  final MappableFields<SearchResult> fields = const {
    #hits: _f$hits,
  };

  static SearchResult _instantiate(DecodingData data) {
    return SearchResult(hits: data.dec(_f$hits));
  }

  @override
  final Function instantiate = _instantiate;

  static SearchResult fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SearchResult>(map);
  }

  static SearchResult fromJson(String json) {
    return ensureInitialized().decodeJson<SearchResult>(json);
  }
}

mixin SearchResultMappable {
  String toJson() {
    return SearchResultMapper.ensureInitialized()
        .encodeJson<SearchResult>(this as SearchResult);
  }

  Map<String, dynamic> toMap() {
    return SearchResultMapper.ensureInitialized()
        .encodeMap<SearchResult>(this as SearchResult);
  }

  SearchResultCopyWith<SearchResult, SearchResult, SearchResult> get copyWith =>
      _SearchResultCopyWithImpl(this as SearchResult, $identity, $identity);
  @override
  String toString() {
    return SearchResultMapper.ensureInitialized()
        .stringifyValue(this as SearchResult);
  }

  @override
  bool operator ==(Object other) {
    return SearchResultMapper.ensureInitialized()
        .equalsValue(this as SearchResult, other);
  }

  @override
  int get hashCode {
    return SearchResultMapper.ensureInitialized()
        .hashValue(this as SearchResult);
  }
}

extension SearchResultValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SearchResult, $Out> {
  SearchResultCopyWith<$R, SearchResult, $Out> get $asSearchResult =>
      $base.as((v, t, t2) => _SearchResultCopyWithImpl(v, t, t2));
}

abstract class SearchResultCopyWith<$R, $In extends SearchResult, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, SearchResultHit,
      SearchResultHitCopyWith<$R, SearchResultHit, SearchResultHit>> get hits;
  $R call({List<SearchResultHit>? hits});
  SearchResultCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SearchResultCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SearchResult, $Out>
    implements SearchResultCopyWith<$R, SearchResult, $Out> {
  _SearchResultCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SearchResult> $mapper =
      SearchResultMapper.ensureInitialized();
  @override
  ListCopyWith<$R, SearchResultHit,
          SearchResultHitCopyWith<$R, SearchResultHit, SearchResultHit>>
      get hits => ListCopyWith(
          $value.hits, (v, t) => v.copyWith.$chain(t), (v) => call(hits: v));
  @override
  $R call({List<SearchResultHit>? hits}) =>
      $apply(FieldCopyWithData({if (hits != null) #hits: hits}));
  @override
  SearchResult $make(CopyWithData data) =>
      SearchResult(hits: data.get(#hits, or: $value.hits));

  @override
  SearchResultCopyWith<$R2, SearchResult, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SearchResultCopyWithImpl($value, $cast, t);
}
