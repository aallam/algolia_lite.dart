// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'multi_search_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MultiSearchResponse {
  /// Json response as [Map].
  Map<String, dynamic> get json => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MultiSearchResponseCopyWith<MultiSearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultiSearchResponseCopyWith<$Res> {
  factory $MultiSearchResponseCopyWith(
          MultiSearchResponse value, $Res Function(MultiSearchResponse) then) =
      _$MultiSearchResponseCopyWithImpl<$Res, MultiSearchResponse>;
  @useResult
  $Res call({Map<String, dynamic> json});
}

/// @nodoc
class _$MultiSearchResponseCopyWithImpl<$Res, $Val extends MultiSearchResponse>
    implements $MultiSearchResponseCopyWith<$Res> {
  _$MultiSearchResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? json = null,
  }) {
    return _then(_value.copyWith(
      json: null == json
          ? _value.json
          : json // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MultiSearchResponseCopyWith<$Res>
    implements $MultiSearchResponseCopyWith<$Res> {
  factory _$$_MultiSearchResponseCopyWith(_$_MultiSearchResponse value,
          $Res Function(_$_MultiSearchResponse) then) =
      __$$_MultiSearchResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, dynamic> json});
}

/// @nodoc
class __$$_MultiSearchResponseCopyWithImpl<$Res>
    extends _$MultiSearchResponseCopyWithImpl<$Res, _$_MultiSearchResponse>
    implements _$$_MultiSearchResponseCopyWith<$Res> {
  __$$_MultiSearchResponseCopyWithImpl(_$_MultiSearchResponse _value,
      $Res Function(_$_MultiSearchResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? json = null,
  }) {
    return _then(_$_MultiSearchResponse(
      json: null == json
          ? _value._json
          : json // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

@internal
class _$_MultiSearchResponse implements _MultiSearchResponse {
  const _$_MultiSearchResponse({required final Map<String, dynamic> json})
      : _json = json;

  /// Json response as [Map].
  final Map<String, dynamic> _json;

  /// Json response as [Map].
  @override
  Map<String, dynamic> get json {
    if (_json is EqualUnmodifiableMapView) return _json;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_json);
  }

  @override
  String toString() {
    return 'MultiSearchResponse(json: $json)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MultiSearchResponse &&
            const DeepCollectionEquality().equals(other._json, _json));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_json));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MultiSearchResponseCopyWith<_$_MultiSearchResponse> get copyWith =>
      __$$_MultiSearchResponseCopyWithImpl<_$_MultiSearchResponse>(
          this, _$identity);
}

abstract class _MultiSearchResponse implements MultiSearchResponse {
  const factory _MultiSearchResponse(
      {required final Map<String, dynamic> json}) = _$_MultiSearchResponse;

  @override

  /// Json response as [Map].
  Map<String, dynamic> get json;
  @override
  @JsonKey(ignore: true)
  _$$_MultiSearchResponseCopyWith<_$_MultiSearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
