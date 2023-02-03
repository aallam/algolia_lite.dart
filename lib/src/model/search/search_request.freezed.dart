// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchRequest {
  /// The index to query.
  String get indexName => throw _privateConstructorUsedError;

  /// Search parameters.
  @JsonKey(toJson: encodeParams)
  SearchParams? get params => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchRequestCopyWith<SearchRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchRequestCopyWith<$Res> {
  factory $SearchRequestCopyWith(
          SearchRequest value, $Res Function(SearchRequest) then) =
      _$SearchRequestCopyWithImpl<$Res, SearchRequest>;
  @useResult
  $Res call(
      {String indexName, @JsonKey(toJson: encodeParams) SearchParams? params});

  $SearchParamsCopyWith<$Res>? get params;
}

/// @nodoc
class _$SearchRequestCopyWithImpl<$Res, $Val extends SearchRequest>
    implements $SearchRequestCopyWith<$Res> {
  _$SearchRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? indexName = null,
    Object? params = freezed,
  }) {
    return _then(_value.copyWith(
      indexName: null == indexName
          ? _value.indexName
          : indexName // ignore: cast_nullable_to_non_nullable
              as String,
      params: freezed == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as SearchParams?,
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
abstract class _$$_SearchRequestCopyWith<$Res>
    implements $SearchRequestCopyWith<$Res> {
  factory _$$_SearchRequestCopyWith(
          _$_SearchRequest value, $Res Function(_$_SearchRequest) then) =
      __$$_SearchRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String indexName, @JsonKey(toJson: encodeParams) SearchParams? params});

  @override
  $SearchParamsCopyWith<$Res>? get params;
}

/// @nodoc
class __$$_SearchRequestCopyWithImpl<$Res>
    extends _$SearchRequestCopyWithImpl<$Res, _$_SearchRequest>
    implements _$$_SearchRequestCopyWith<$Res> {
  __$$_SearchRequestCopyWithImpl(
      _$_SearchRequest _value, $Res Function(_$_SearchRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? indexName = null,
    Object? params = freezed,
  }) {
    return _then(_$_SearchRequest(
      indexName: null == indexName
          ? _value.indexName
          : indexName // ignore: cast_nullable_to_non_nullable
              as String,
      params: freezed == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as SearchParams?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_SearchRequest implements _SearchRequest {
  const _$_SearchRequest(
      {required this.indexName, @JsonKey(toJson: encodeParams) this.params});

  /// The index to query.
  @override
  final String indexName;

  /// Search parameters.
  @override
  @JsonKey(toJson: encodeParams)
  final SearchParams? params;

  @override
  String toString() {
    return 'SearchRequest(indexName: $indexName, params: $params)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchRequest &&
            (identical(other.indexName, indexName) ||
                other.indexName == indexName) &&
            (identical(other.params, params) || other.params == params));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, indexName, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchRequestCopyWith<_$_SearchRequest> get copyWith =>
      __$$_SearchRequestCopyWithImpl<_$_SearchRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchRequestToJson(
      this,
    );
  }
}

abstract class _SearchRequest implements SearchRequest {
  const factory _SearchRequest(
          {required final String indexName,
          @JsonKey(toJson: encodeParams) final SearchParams? params}) =
      _$_SearchRequest;

  @override

  /// The index to query.
  String get indexName;
  @override

  /// Search parameters.
  @JsonKey(toJson: encodeParams)
  SearchParams? get params;
  @override
  @JsonKey(ignore: true)
  _$$_SearchRequestCopyWith<_$_SearchRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
