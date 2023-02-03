// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'insights_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InsightsRequest {
  /// Insight events list.
  Iterable<InsightEvent> get events => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InsightsRequestCopyWith<InsightsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InsightsRequestCopyWith<$Res> {
  factory $InsightsRequestCopyWith(
          InsightsRequest value, $Res Function(InsightsRequest) then) =
      _$InsightsRequestCopyWithImpl<$Res, InsightsRequest>;
  @useResult
  $Res call({Iterable<InsightEvent> events});
}

/// @nodoc
class _$InsightsRequestCopyWithImpl<$Res, $Val extends InsightsRequest>
    implements $InsightsRequestCopyWith<$Res> {
  _$InsightsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
  }) {
    return _then(_value.copyWith(
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as Iterable<InsightEvent>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InsightsRequestCopyWith<$Res>
    implements $InsightsRequestCopyWith<$Res> {
  factory _$$_InsightsRequestCopyWith(
          _$_InsightsRequest value, $Res Function(_$_InsightsRequest) then) =
      __$$_InsightsRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Iterable<InsightEvent> events});
}

/// @nodoc
class __$$_InsightsRequestCopyWithImpl<$Res>
    extends _$InsightsRequestCopyWithImpl<$Res, _$_InsightsRequest>
    implements _$$_InsightsRequestCopyWith<$Res> {
  __$$_InsightsRequestCopyWithImpl(
      _$_InsightsRequest _value, $Res Function(_$_InsightsRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
  }) {
    return _then(_$_InsightsRequest(
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as Iterable<InsightEvent>,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_InsightsRequest implements _InsightsRequest {
  const _$_InsightsRequest({required this.events});

  /// Insight events list.
  @override
  final Iterable<InsightEvent> events;

  @override
  String toString() {
    return 'InsightsRequest(events: $events)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InsightsRequest &&
            const DeepCollectionEquality().equals(other.events, events));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(events));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InsightsRequestCopyWith<_$_InsightsRequest> get copyWith =>
      __$$_InsightsRequestCopyWithImpl<_$_InsightsRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InsightsRequestToJson(
      this,
    );
  }
}

abstract class _InsightsRequest implements InsightsRequest {
  const factory _InsightsRequest(
      {required final Iterable<InsightEvent> events}) = _$_InsightsRequest;

  @override

  /// Insight events list.
  Iterable<InsightEvent> get events;
  @override
  @JsonKey(ignore: true)
  _$$_InsightsRequestCopyWith<_$_InsightsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
