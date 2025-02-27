// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'search_text.dart';

class SearchTextMapper extends ClassMapperBase<SearchText> {
  SearchTextMapper._();

  static SearchTextMapper? _instance;
  static SearchTextMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SearchTextMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SearchText';

  static List<String> _$returnFields(SearchText v) => v.returnFields;
  static const Field<SearchText, List<String>> _f$returnFields =
      Field('returnFields', _$returnFields);
  static Map<String, dynamic> _$inputs(SearchText v) => v.inputs;
  static const Field<SearchText, Map<String, dynamic>> _f$inputs =
      Field('inputs', _$inputs);
  static int _$topK(SearchText v) => v.topK;
  static const Field<SearchText, int> _f$topK =
      Field('topK', _$topK, opt: true, def: 10);
  static int _$rerankTopK(SearchText v) => v.rerankTopK;
  static const Field<SearchText, int> _f$rerankTopK =
      Field('rerankTopK', _$rerankTopK, opt: true, def: 5);
  static String _$rerankModel(SearchText v) => v.rerankModel;
  static const Field<SearchText, String> _f$rerankModel =
      Field('rerankModel', _$rerankModel, opt: true, def: "bge-reranker-v2-m3");
  static String? _$rerankInput(SearchText v) => v.rerankInput;
  static const Field<SearchText, String> _f$rerankInput =
      Field('rerankInput', _$rerankInput, opt: true);
  static List<String>? _$rerankReturnFields(SearchText v) =>
      v.rerankReturnFields;
  static const Field<SearchText, List<String>> _f$rerankReturnFields =
      Field('rerankReturnFields', _$rerankReturnFields, opt: true);

  @override
  final MappableFields<SearchText> fields = const {
    #returnFields: _f$returnFields,
    #inputs: _f$inputs,
    #topK: _f$topK,
    #rerankTopK: _f$rerankTopK,
    #rerankModel: _f$rerankModel,
    #rerankInput: _f$rerankInput,
    #rerankReturnFields: _f$rerankReturnFields,
  };

  static SearchText _instantiate(DecodingData data) {
    return SearchText(
        returnFields: data.dec(_f$returnFields),
        inputs: data.dec(_f$inputs),
        topK: data.dec(_f$topK),
        rerankTopK: data.dec(_f$rerankTopK),
        rerankModel: data.dec(_f$rerankModel),
        rerankInput: data.dec(_f$rerankInput),
        rerankReturnFields: data.dec(_f$rerankReturnFields));
  }

  @override
  final Function instantiate = _instantiate;

  static SearchText fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SearchText>(map);
  }

  static SearchText fromJson(String json) {
    return ensureInitialized().decodeJson<SearchText>(json);
  }
}

mixin SearchTextMappable {
  String toJson() {
    return SearchTextMapper.ensureInitialized()
        .encodeJson<SearchText>(this as SearchText);
  }

  Map<String, dynamic> toMap() {
    return SearchTextMapper.ensureInitialized()
        .encodeMap<SearchText>(this as SearchText);
  }

  SearchTextCopyWith<SearchText, SearchText, SearchText> get copyWith =>
      _SearchTextCopyWithImpl(this as SearchText, $identity, $identity);
  @override
  String toString() {
    return SearchTextMapper.ensureInitialized()
        .stringifyValue(this as SearchText);
  }

  @override
  bool operator ==(Object other) {
    return SearchTextMapper.ensureInitialized()
        .equalsValue(this as SearchText, other);
  }

  @override
  int get hashCode {
    return SearchTextMapper.ensureInitialized().hashValue(this as SearchText);
  }
}

extension SearchTextValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SearchText, $Out> {
  SearchTextCopyWith<$R, SearchText, $Out> get $asSearchText =>
      $base.as((v, t, t2) => _SearchTextCopyWithImpl(v, t, t2));
}

abstract class SearchTextCopyWith<$R, $In extends SearchText, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get returnFields;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
      get inputs;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get rerankReturnFields;
  $R call(
      {List<String>? returnFields,
      Map<String, dynamic>? inputs,
      int? topK,
      int? rerankTopK,
      String? rerankModel,
      String? rerankInput,
      List<String>? rerankReturnFields});
  SearchTextCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SearchTextCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SearchText, $Out>
    implements SearchTextCopyWith<$R, SearchText, $Out> {
  _SearchTextCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SearchText> $mapper =
      SearchTextMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
      get returnFields => ListCopyWith(
          $value.returnFields,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(returnFields: v));
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
      get inputs => MapCopyWith($value.inputs,
          (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(inputs: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get rerankReturnFields => $value.rerankReturnFields != null
          ? ListCopyWith(
              $value.rerankReturnFields!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(rerankReturnFields: v))
          : null;
  @override
  $R call(
          {List<String>? returnFields,
          Map<String, dynamic>? inputs,
          int? topK,
          int? rerankTopK,
          String? rerankModel,
          Object? rerankInput = $none,
          Object? rerankReturnFields = $none}) =>
      $apply(FieldCopyWithData({
        if (returnFields != null) #returnFields: returnFields,
        if (inputs != null) #inputs: inputs,
        if (topK != null) #topK: topK,
        if (rerankTopK != null) #rerankTopK: rerankTopK,
        if (rerankModel != null) #rerankModel: rerankModel,
        if (rerankInput != $none) #rerankInput: rerankInput,
        if (rerankReturnFields != $none) #rerankReturnFields: rerankReturnFields
      }));
  @override
  SearchText $make(CopyWithData data) => SearchText(
      returnFields: data.get(#returnFields, or: $value.returnFields),
      inputs: data.get(#inputs, or: $value.inputs),
      topK: data.get(#topK, or: $value.topK),
      rerankTopK: data.get(#rerankTopK, or: $value.rerankTopK),
      rerankModel: data.get(#rerankModel, or: $value.rerankModel),
      rerankInput: data.get(#rerankInput, or: $value.rerankInput),
      rerankReturnFields:
          data.get(#rerankReturnFields, or: $value.rerankReturnFields));

  @override
  SearchTextCopyWith<$R2, SearchText, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SearchTextCopyWithImpl($value, $cast, t);
}
