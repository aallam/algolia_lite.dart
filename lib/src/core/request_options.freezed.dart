// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RequestOptions {
  Map<String, String>? get headers => throw _privateConstructorUsedError;
  Duration? get timeout => throw _privateConstructorUsedError;
  Map<String, String>? get queryParams => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RequestOptionsCopyWith<RequestOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestOptionsCopyWith<$Res> {
  factory $RequestOptionsCopyWith(
          RequestOptions value, $Res Function(RequestOptions) then) =
      _$RequestOptionsCopyWithImpl<$Res, RequestOptions>;
  @useResult
  $Res call(
      {Map<String, String>? headers,
      Duration? timeout,
      Map<String, String>? queryParams});
}

/// @nodoc
class _$RequestOptionsCopyWithImpl<$Res, $Val extends RequestOptions>
    implements $RequestOptionsCopyWith<$Res> {
  _$RequestOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headers = freezed,
    Object? timeout = freezed,
    Object? queryParams = freezed,
  }) {
    return _then(_value.copyWith(
      headers: freezed == headers
          ? _value.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      timeout: freezed == timeout
          ? _value.timeout
          : timeout // ignore: cast_nullable_to_non_nullable
              as Duration?,
      queryParams: freezed == queryParams
          ? _value.queryParams
          : queryParams // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RequestOptionsCopyWith<$Res>
    implements $RequestOptionsCopyWith<$Res> {
  factory _$$_RequestOptionsCopyWith(
          _$_RequestOptions value, $Res Function(_$_RequestOptions) then) =
      __$$_RequestOptionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, String>? headers,
      Duration? timeout,
      Map<String, String>? queryParams});
}

/// @nodoc
class __$$_RequestOptionsCopyWithImpl<$Res>
    extends _$RequestOptionsCopyWithImpl<$Res, _$_RequestOptions>
    implements _$$_RequestOptionsCopyWith<$Res> {
  __$$_RequestOptionsCopyWithImpl(
      _$_RequestOptions _value, $Res Function(_$_RequestOptions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headers = freezed,
    Object? timeout = freezed,
    Object? queryParams = freezed,
  }) {
    return _then(_$_RequestOptions(
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      timeout: freezed == timeout
          ? _value.timeout
          : timeout // ignore: cast_nullable_to_non_nullable
              as Duration?,
      queryParams: freezed == queryParams
          ? _value._queryParams
          : queryParams // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }
}

/// @nodoc

class _$_RequestOptions implements _RequestOptions {
  const _$_RequestOptions(
      {final Map<String, String>? headers,
      this.timeout,
      final Map<String, String>? queryParams})
      : _headers = headers,
        _queryParams = queryParams;

  final Map<String, String>? _headers;
  @override
  Map<String, String>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final Duration? timeout;
  final Map<String, String>? _queryParams;
  @override
  Map<String, String>? get queryParams {
    final value = _queryParams;
    if (value == null) return null;
    if (_queryParams is EqualUnmodifiableMapView) return _queryParams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'RequestOptions(headers: $headers, timeout: $timeout, queryParams: $queryParams)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestOptions &&
            const DeepCollectionEquality().equals(other._headers, _headers) &&
            (identical(other.timeout, timeout) || other.timeout == timeout) &&
            const DeepCollectionEquality()
                .equals(other._queryParams, _queryParams));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_headers),
      timeout,
      const DeepCollectionEquality().hash(_queryParams));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequestOptionsCopyWith<_$_RequestOptions> get copyWith =>
      __$$_RequestOptionsCopyWithImpl<_$_RequestOptions>(this, _$identity);
}

abstract class _RequestOptions implements RequestOptions {
  const factory _RequestOptions(
      {final Map<String, String>? headers,
      final Duration? timeout,
      final Map<String, String>? queryParams}) = _$_RequestOptions;

  @override
  Map<String, String>? get headers;
  @override
  Duration? get timeout;
  @override
  Map<String, String>? get queryParams;
  @override
  @JsonKey(ignore: true)
  _$$_RequestOptionsCopyWith<_$_RequestOptions> get copyWith =>
      throw _privateConstructorUsedError;
}
