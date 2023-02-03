// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'object_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ObjectRequest {
  /// Name of the index containing the object
  String get indexName => throw _privateConstructorUsedError;

  /// ID of the object within that index
  String get objectID => throw _privateConstructorUsedError;

  /// List of attributes to retrieve. By default, all retrievable attributes
  /// are returned.
  List<String>? get attributes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ObjectRequestCopyWith<ObjectRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObjectRequestCopyWith<$Res> {
  factory $ObjectRequestCopyWith(
          ObjectRequest value, $Res Function(ObjectRequest) then) =
      _$ObjectRequestCopyWithImpl<$Res, ObjectRequest>;
  @useResult
  $Res call({String indexName, String objectID, List<String>? attributes});
}

/// @nodoc
class _$ObjectRequestCopyWithImpl<$Res, $Val extends ObjectRequest>
    implements $ObjectRequestCopyWith<$Res> {
  _$ObjectRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? indexName = null,
    Object? objectID = null,
    Object? attributes = freezed,
  }) {
    return _then(_value.copyWith(
      indexName: null == indexName
          ? _value.indexName
          : indexName // ignore: cast_nullable_to_non_nullable
              as String,
      objectID: null == objectID
          ? _value.objectID
          : objectID // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ObjectRequestCopyWith<$Res>
    implements $ObjectRequestCopyWith<$Res> {
  factory _$$_ObjectRequestCopyWith(
          _$_ObjectRequest value, $Res Function(_$_ObjectRequest) then) =
      __$$_ObjectRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String indexName, String objectID, List<String>? attributes});
}

/// @nodoc
class __$$_ObjectRequestCopyWithImpl<$Res>
    extends _$ObjectRequestCopyWithImpl<$Res, _$_ObjectRequest>
    implements _$$_ObjectRequestCopyWith<$Res> {
  __$$_ObjectRequestCopyWithImpl(
      _$_ObjectRequest _value, $Res Function(_$_ObjectRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? indexName = null,
    Object? objectID = null,
    Object? attributes = freezed,
  }) {
    return _then(_$_ObjectRequest(
      indexName: null == indexName
          ? _value.indexName
          : indexName // ignore: cast_nullable_to_non_nullable
              as String,
      objectID: null == objectID
          ? _value.objectID
          : objectID // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: freezed == attributes
          ? _value._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_ObjectRequest implements _ObjectRequest {
  const _$_ObjectRequest(
      {required this.indexName,
      required this.objectID,
      final List<String>? attributes})
      : _attributes = attributes;

  /// Name of the index containing the object
  @override
  final String indexName;

  /// ID of the object within that index
  @override
  final String objectID;

  /// List of attributes to retrieve. By default, all retrievable attributes
  /// are returned.
  final List<String>? _attributes;

  /// List of attributes to retrieve. By default, all retrievable attributes
  /// are returned.
  @override
  List<String>? get attributes {
    final value = _attributes;
    if (value == null) return null;
    if (_attributes is EqualUnmodifiableListView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ObjectRequest(indexName: $indexName, objectID: $objectID, attributes: $attributes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ObjectRequest &&
            (identical(other.indexName, indexName) ||
                other.indexName == indexName) &&
            (identical(other.objectID, objectID) ||
                other.objectID == objectID) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, indexName, objectID,
      const DeepCollectionEquality().hash(_attributes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ObjectRequestCopyWith<_$_ObjectRequest> get copyWith =>
      __$$_ObjectRequestCopyWithImpl<_$_ObjectRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ObjectRequestToJson(
      this,
    );
  }
}

abstract class _ObjectRequest implements ObjectRequest {
  const factory _ObjectRequest(
      {required final String indexName,
      required final String objectID,
      final List<String>? attributes}) = _$_ObjectRequest;

  @override

  /// Name of the index containing the object
  String get indexName;
  @override

  /// ID of the object within that index
  String get objectID;
  @override

  /// List of attributes to retrieve. By default, all retrievable attributes
  /// are returned.
  List<String>? get attributes;
  @override
  @JsonKey(ignore: true)
  _$$_ObjectRequestCopyWith<_$_ObjectRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
