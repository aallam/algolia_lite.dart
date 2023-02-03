// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'facet_search_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FacetSearchRequest {
  /// The index to query.
  @ignore
  String get indexName => throw _privateConstructorUsedError;

  /// Facet to search.
  @ignore
  String get facetName => throw _privateConstructorUsedError;

  /// Search params.
  @JsonKey(toJson: encodeParams)
  SearchParams? get params => throw _privateConstructorUsedError;

  /// Text to search inside the facet’s values.
  String? get facetQuery => throw _privateConstructorUsedError;

  /// The maximum number of facet hits to return.
  int? get maxFacetHits => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FacetSearchRequestCopyWith<FacetSearchRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FacetSearchRequestCopyWith<$Res> {
  factory $FacetSearchRequestCopyWith(
          FacetSearchRequest value, $Res Function(FacetSearchRequest) then) =
      _$FacetSearchRequestCopyWithImpl<$Res, FacetSearchRequest>;
  @useResult
  $Res call(
      {@ignore String indexName,
      @ignore String facetName,
      @JsonKey(toJson: encodeParams) SearchParams? params,
      String? facetQuery,
      int? maxFacetHits});

  $SearchParamsCopyWith<$Res>? get params;
}

/// @nodoc
class _$FacetSearchRequestCopyWithImpl<$Res, $Val extends FacetSearchRequest>
    implements $FacetSearchRequestCopyWith<$Res> {
  _$FacetSearchRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? indexName = null,
    Object? facetName = null,
    Object? params = freezed,
    Object? facetQuery = freezed,
    Object? maxFacetHits = freezed,
  }) {
    return _then(_value.copyWith(
      indexName: null == indexName
          ? _value.indexName
          : indexName // ignore: cast_nullable_to_non_nullable
              as String,
      facetName: null == facetName
          ? _value.facetName
          : facetName // ignore: cast_nullable_to_non_nullable
              as String,
      params: freezed == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as SearchParams?,
      facetQuery: freezed == facetQuery
          ? _value.facetQuery
          : facetQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      maxFacetHits: freezed == maxFacetHits
          ? _value.maxFacetHits
          : maxFacetHits // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SearchParamsCopyWith<$Res>? get params {
    if (_value.params == null) {
      return null;
    }

    return $SearchParamsCopyWith<$Res>(_value.params!, (value) {
      return _then(_value.copyWith(params: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FacetSearchRequestCopyWith<$Res>
    implements $FacetSearchRequestCopyWith<$Res> {
  factory _$$_FacetSearchRequestCopyWith(_$_FacetSearchRequest value,
          $Res Function(_$_FacetSearchRequest) then) =
      __$$_FacetSearchRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@ignore String indexName,
      @ignore String facetName,
      @JsonKey(toJson: encodeParams) SearchParams? params,
      String? facetQuery,
      int? maxFacetHits});

  @override
  $SearchParamsCopyWith<$Res>? get params;
}

/// @nodoc
class __$$_FacetSearchRequestCopyWithImpl<$Res>
    extends _$FacetSearchRequestCopyWithImpl<$Res, _$_FacetSearchRequest>
    implements _$$_FacetSearchRequestCopyWith<$Res> {
  __$$_FacetSearchRequestCopyWithImpl(
      _$_FacetSearchRequest _value, $Res Function(_$_FacetSearchRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? indexName = null,
    Object? facetName = null,
    Object? params = freezed,
    Object? facetQuery = freezed,
    Object? maxFacetHits = freezed,
  }) {
    return _then(_$_FacetSearchRequest(
      indexName: null == indexName
          ? _value.indexName
          : indexName // ignore: cast_nullable_to_non_nullable
              as String,
      facetName: null == facetName
          ? _value.facetName
          : facetName // ignore: cast_nullable_to_non_nullable
              as String,
      params: freezed == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as SearchParams?,
      facetQuery: freezed == facetQuery
          ? _value.facetQuery
          : facetQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      maxFacetHits: freezed == maxFacetHits
          ? _value.maxFacetHits
          : maxFacetHits // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_FacetSearchRequest implements _FacetSearchRequest {
  const _$_FacetSearchRequest(
      {@ignore required this.indexName,
      @ignore required this.facetName,
      @JsonKey(toJson: encodeParams) this.params,
      this.facetQuery,
      this.maxFacetHits});

  /// The index to query.
  @override
  @ignore
  final String indexName;

  /// Facet to search.
  @override
  @ignore
  final String facetName;

  /// Search params.
  @override
  @JsonKey(toJson: encodeParams)
  final SearchParams? params;

  /// Text to search inside the facet’s values.
  @override
  final String? facetQuery;

  /// The maximum number of facet hits to return.
  @override
  final int? maxFacetHits;

  @override
  String toString() {
    return 'FacetSearchRequest(indexName: $indexName, facetName: $facetName, params: $params, facetQuery: $facetQuery, maxFacetHits: $maxFacetHits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FacetSearchRequest &&
            (identical(other.indexName, indexName) ||
                other.indexName == indexName) &&
            (identical(other.facetName, facetName) ||
                other.facetName == facetName) &&
            (identical(other.params, params) || other.params == params) &&
            (identical(other.facetQuery, facetQuery) ||
                other.facetQuery == facetQuery) &&
            (identical(other.maxFacetHits, maxFacetHits) ||
                other.maxFacetHits == maxFacetHits));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, indexName, facetName, params, facetQuery, maxFacetHits);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FacetSearchRequestCopyWith<_$_FacetSearchRequest> get copyWith =>
      __$$_FacetSearchRequestCopyWithImpl<_$_FacetSearchRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FacetSearchRequestToJson(
      this,
    );
  }
}

abstract class _FacetSearchRequest implements FacetSearchRequest {
  const factory _FacetSearchRequest(
      {@ignore required final String indexName,
      @ignore required final String facetName,
      @JsonKey(toJson: encodeParams) final SearchParams? params,
      final String? facetQuery,
      final int? maxFacetHits}) = _$_FacetSearchRequest;

  @override

  /// The index to query.
  @ignore
  String get indexName;
  @override

  /// Facet to search.
  @ignore
  String get facetName;
  @override

  /// Search params.
  @JsonKey(toJson: encodeParams)
  SearchParams? get params;
  @override

  /// Text to search inside the facet’s values.
  String? get facetQuery;
  @override

  /// The maximum number of facet hits to return.
  int? get maxFacetHits;
  @override
  @JsonKey(ignore: true)
  _$$_FacetSearchRequestCopyWith<_$_FacetSearchRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
