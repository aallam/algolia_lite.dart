// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'objects_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ObjectsResponse _$ObjectsResponseFromJson(Map<String, dynamic> json) {
  return _ObjectsResponse.fromJson(json);
}

/// @nodoc
mixin _$ObjectsResponse {
  /// List of objects.
  @JsonKey(fromJson: objectsFromJson)
  Iterable<ObjectResponse> get results => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ObjectsResponseCopyWith<ObjectsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObjectsResponseCopyWith<$Res> {
  factory $ObjectsResponseCopyWith(
          ObjectsResponse value, $Res Function(ObjectsResponse) then) =
      _$ObjectsResponseCopyWithImpl<$Res, ObjectsResponse>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: objectsFromJson) Iterable<ObjectResponse> results});
}

/// @nodoc
class _$ObjectsResponseCopyWithImpl<$Res, $Val extends ObjectsResponse>
    implements $ObjectsResponseCopyWith<$Res> {
  _$ObjectsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as Iterable<ObjectResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ObjectsResponseCopyWith<$Res>
    implements $ObjectsResponseCopyWith<$Res> {
  factory _$$_ObjectsResponseCopyWith(
          _$_ObjectsResponse value, $Res Function(_$_ObjectsResponse) then) =
      __$$_ObjectsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: objectsFromJson) Iterable<ObjectResponse> results});
}

/// @nodoc
class __$$_ObjectsResponseCopyWithImpl<$Res>
    extends _$ObjectsResponseCopyWithImpl<$Res, _$_ObjectsResponse>
    implements _$$_ObjectsResponseCopyWith<$Res> {
  __$$_ObjectsResponseCopyWithImpl(
      _$_ObjectsResponse _value, $Res Function(_$_ObjectsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_$_ObjectsResponse(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as Iterable<ObjectResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
@internal
class _$_ObjectsResponse implements _ObjectsResponse {
  const _$_ObjectsResponse(
      {@JsonKey(fromJson: objectsFromJson) required this.results});

  factory _$_ObjectsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ObjectsResponseFromJson(json);

  /// List of objects.
  @override
  @JsonKey(fromJson: objectsFromJson)
  final Iterable<ObjectResponse> results;

  @override
  String toString() {
    return 'ObjectsResponse(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ObjectsResponse &&
            const DeepCollectionEquality().equals(other.results, results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ObjectsResponseCopyWith<_$_ObjectsResponse> get copyWith =>
      __$$_ObjectsResponseCopyWithImpl<_$_ObjectsResponse>(this, _$identity);
}

abstract class _ObjectsResponse implements ObjectsResponse {
  const factory _ObjectsResponse(
          {@JsonKey(fromJson: objectsFromJson)
              required final Iterable<ObjectResponse> results}) =
      _$_ObjectsResponse;

  factory _ObjectsResponse.fromJson(Map<String, dynamic> json) =
      _$_ObjectsResponse.fromJson;

  @override

  /// List of objects.
  @JsonKey(fromJson: objectsFromJson)
  Iterable<ObjectResponse> get results;
  @override
  @JsonKey(ignore: true)
  _$$_ObjectsResponseCopyWith<_$_ObjectsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
