// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'objects_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ObjectsRequest {
  /// List of object requests.
  Iterable<ObjectRequest> get requests => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ObjectsRequestCopyWith<ObjectsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObjectsRequestCopyWith<$Res> {
  factory $ObjectsRequestCopyWith(
          ObjectsRequest value, $Res Function(ObjectsRequest) then) =
      _$ObjectsRequestCopyWithImpl<$Res, ObjectsRequest>;
  @useResult
  $Res call({Iterable<ObjectRequest> requests});
}

/// @nodoc
class _$ObjectsRequestCopyWithImpl<$Res, $Val extends ObjectsRequest>
    implements $ObjectsRequestCopyWith<$Res> {
  _$ObjectsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requests = null,
  }) {
    return _then(_value.copyWith(
      requests: null == requests
          ? _value.requests
          : requests // ignore: cast_nullable_to_non_nullable
              as Iterable<ObjectRequest>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ObjectsRequestCopyWith<$Res>
    implements $ObjectsRequestCopyWith<$Res> {
  factory _$$_ObjectsRequestCopyWith(
          _$_ObjectsRequest value, $Res Function(_$_ObjectsRequest) then) =
      __$$_ObjectsRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Iterable<ObjectRequest> requests});
}

/// @nodoc
class __$$_ObjectsRequestCopyWithImpl<$Res>
    extends _$ObjectsRequestCopyWithImpl<$Res, _$_ObjectsRequest>
    implements _$$_ObjectsRequestCopyWith<$Res> {
  __$$_ObjectsRequestCopyWithImpl(
      _$_ObjectsRequest _value, $Res Function(_$_ObjectsRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requests = null,
  }) {
    return _then(_$_ObjectsRequest(
      requests: null == requests
          ? _value.requests
          : requests // ignore: cast_nullable_to_non_nullable
              as Iterable<ObjectRequest>,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_ObjectsRequest implements _ObjectsRequest {
  const _$_ObjectsRequest({required this.requests});

  /// List of object requests.
  @override
  final Iterable<ObjectRequest> requests;

  @override
  String toString() {
    return 'ObjectsRequest(requests: $requests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ObjectsRequest &&
            const DeepCollectionEquality().equals(other.requests, requests));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(requests));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ObjectsRequestCopyWith<_$_ObjectsRequest> get copyWith =>
      __$$_ObjectsRequestCopyWithImpl<_$_ObjectsRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ObjectsRequestToJson(
      this,
    );
  }
}

abstract class _ObjectsRequest implements ObjectsRequest {
  const factory _ObjectsRequest(
      {required final Iterable<ObjectRequest> requests}) = _$_ObjectsRequest;

  @override

  /// List of object requests.
  Iterable<ObjectRequest> get requests;
  @override
  @JsonKey(ignore: true)
  _$$_ObjectsRequestCopyWith<_$_ObjectsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
