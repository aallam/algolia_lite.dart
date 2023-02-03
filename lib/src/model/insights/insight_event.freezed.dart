// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'insight_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InsightEvent {
  /// "click" "conversion" or "view"
  EventType get eventType => throw _privateConstructorUsedError;

  /// A user-defined string used to categorize events.
  String get eventName => throw _privateConstructorUsedError;

  /// Name of the targeted index.
  String get index => throw _privateConstructorUsedError;

  /// A user identifier. Depending if the user is logged-in or not, several
  /// strategies can be used from a sessionId to a technical identifier.
  /// You should always send pseudonymous or anonymous userTokens.
  String get userToken => throw _privateConstructorUsedError;

  /// Time of the event expressed in milliseconds since the Unix epoch.
  int? get timestamp => throw _privateConstructorUsedError;

  /// Algolia queryID. This is required when an event is tied to a search.
  String? get queryID => throw _privateConstructorUsedError;

  /// An array of index objectID. Limited to 20 objects. An event can’t have
  /// both objectIDs and filters at the same time.
  Iterable<String>? get objectIDs => throw _privateConstructorUsedError;

  /// An array of filters. Limited to 10 filters.
  /// An event can’t have both objectIDs and filters at the same time.
  Iterable<String>? get filters => throw _privateConstructorUsedError;

  ///Position of the click in the list of Algolia search results.
  ///This field is required if a queryID is provided. One position must be
  /// provided for each objectID.
  Iterable<int>? get positions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InsightEventCopyWith<InsightEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InsightEventCopyWith<$Res> {
  factory $InsightEventCopyWith(
          InsightEvent value, $Res Function(InsightEvent) then) =
      _$InsightEventCopyWithImpl<$Res, InsightEvent>;
  @useResult
  $Res call(
      {EventType eventType,
      String eventName,
      String index,
      String userToken,
      int? timestamp,
      String? queryID,
      Iterable<String>? objectIDs,
      Iterable<String>? filters,
      Iterable<int>? positions});
}

/// @nodoc
class _$InsightEventCopyWithImpl<$Res, $Val extends InsightEvent>
    implements $InsightEventCopyWith<$Res> {
  _$InsightEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? eventName = null,
    Object? index = null,
    Object? userToken = null,
    Object? timestamp = freezed,
    Object? queryID = freezed,
    Object? objectIDs = freezed,
    Object? filters = freezed,
    Object? positions = freezed,
  }) {
    return _then(_value.copyWith(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as EventType,
      eventName: null == eventName
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as String,
      userToken: null == userToken
          ? _value.userToken
          : userToken // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      queryID: freezed == queryID
          ? _value.queryID
          : queryID // ignore: cast_nullable_to_non_nullable
              as String?,
      objectIDs: freezed == objectIDs
          ? _value.objectIDs
          : objectIDs // ignore: cast_nullable_to_non_nullable
              as Iterable<String>?,
      filters: freezed == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as Iterable<String>?,
      positions: freezed == positions
          ? _value.positions
          : positions // ignore: cast_nullable_to_non_nullable
              as Iterable<int>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InsightEventCopyWith<$Res>
    implements $InsightEventCopyWith<$Res> {
  factory _$$_InsightEventCopyWith(
          _$_InsightEvent value, $Res Function(_$_InsightEvent) then) =
      __$$_InsightEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EventType eventType,
      String eventName,
      String index,
      String userToken,
      int? timestamp,
      String? queryID,
      Iterable<String>? objectIDs,
      Iterable<String>? filters,
      Iterable<int>? positions});
}

/// @nodoc
class __$$_InsightEventCopyWithImpl<$Res>
    extends _$InsightEventCopyWithImpl<$Res, _$_InsightEvent>
    implements _$$_InsightEventCopyWith<$Res> {
  __$$_InsightEventCopyWithImpl(
      _$_InsightEvent _value, $Res Function(_$_InsightEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? eventName = null,
    Object? index = null,
    Object? userToken = null,
    Object? timestamp = freezed,
    Object? queryID = freezed,
    Object? objectIDs = freezed,
    Object? filters = freezed,
    Object? positions = freezed,
  }) {
    return _then(_$_InsightEvent(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as EventType,
      eventName: null == eventName
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as String,
      userToken: null == userToken
          ? _value.userToken
          : userToken // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      queryID: freezed == queryID
          ? _value.queryID
          : queryID // ignore: cast_nullable_to_non_nullable
              as String?,
      objectIDs: freezed == objectIDs
          ? _value.objectIDs
          : objectIDs // ignore: cast_nullable_to_non_nullable
              as Iterable<String>?,
      filters: freezed == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as Iterable<String>?,
      positions: freezed == positions
          ? _value.positions
          : positions // ignore: cast_nullable_to_non_nullable
              as Iterable<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_InsightEvent implements _InsightEvent {
  const _$_InsightEvent(
      {required this.eventType,
      required this.eventName,
      required this.index,
      required this.userToken,
      this.timestamp,
      this.queryID,
      this.objectIDs,
      this.filters,
      this.positions});

  /// "click" "conversion" or "view"
  @override
  final EventType eventType;

  /// A user-defined string used to categorize events.
  @override
  final String eventName;

  /// Name of the targeted index.
  @override
  final String index;

  /// A user identifier. Depending if the user is logged-in or not, several
  /// strategies can be used from a sessionId to a technical identifier.
  /// You should always send pseudonymous or anonymous userTokens.
  @override
  final String userToken;

  /// Time of the event expressed in milliseconds since the Unix epoch.
  @override
  final int? timestamp;

  /// Algolia queryID. This is required when an event is tied to a search.
  @override
  final String? queryID;

  /// An array of index objectID. Limited to 20 objects. An event can’t have
  /// both objectIDs and filters at the same time.
  @override
  final Iterable<String>? objectIDs;

  /// An array of filters. Limited to 10 filters.
  /// An event can’t have both objectIDs and filters at the same time.
  @override
  final Iterable<String>? filters;

  ///Position of the click in the list of Algolia search results.
  ///This field is required if a queryID is provided. One position must be
  /// provided for each objectID.
  @override
  final Iterable<int>? positions;

  @override
  String toString() {
    return 'InsightEvent(eventType: $eventType, eventName: $eventName, index: $index, userToken: $userToken, timestamp: $timestamp, queryID: $queryID, objectIDs: $objectIDs, filters: $filters, positions: $positions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InsightEvent &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.eventName, eventName) ||
                other.eventName == eventName) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.userToken, userToken) ||
                other.userToken == userToken) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.queryID, queryID) || other.queryID == queryID) &&
            const DeepCollectionEquality().equals(other.objectIDs, objectIDs) &&
            const DeepCollectionEquality().equals(other.filters, filters) &&
            const DeepCollectionEquality().equals(other.positions, positions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      eventType,
      eventName,
      index,
      userToken,
      timestamp,
      queryID,
      const DeepCollectionEquality().hash(objectIDs),
      const DeepCollectionEquality().hash(filters),
      const DeepCollectionEquality().hash(positions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InsightEventCopyWith<_$_InsightEvent> get copyWith =>
      __$$_InsightEventCopyWithImpl<_$_InsightEvent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InsightEventToJson(
      this,
    );
  }
}

abstract class _InsightEvent implements InsightEvent {
  const factory _InsightEvent(
      {required final EventType eventType,
      required final String eventName,
      required final String index,
      required final String userToken,
      final int? timestamp,
      final String? queryID,
      final Iterable<String>? objectIDs,
      final Iterable<String>? filters,
      final Iterable<int>? positions}) = _$_InsightEvent;

  @override

  /// "click" "conversion" or "view"
  EventType get eventType;
  @override

  /// A user-defined string used to categorize events.
  String get eventName;
  @override

  /// Name of the targeted index.
  String get index;
  @override

  /// A user identifier. Depending if the user is logged-in or not, several
  /// strategies can be used from a sessionId to a technical identifier.
  /// You should always send pseudonymous or anonymous userTokens.
  String get userToken;
  @override

  /// Time of the event expressed in milliseconds since the Unix epoch.
  int? get timestamp;
  @override

  /// Algolia queryID. This is required when an event is tied to a search.
  String? get queryID;
  @override

  /// An array of index objectID. Limited to 20 objects. An event can’t have
  /// both objectIDs and filters at the same time.
  Iterable<String>? get objectIDs;
  @override

  /// An array of filters. Limited to 10 filters.
  /// An event can’t have both objectIDs and filters at the same time.
  Iterable<String>? get filters;
  @override

  ///Position of the click in the list of Algolia search results.
  ///This field is required if a queryID is provided. One position must be
  /// provided for each objectID.
  Iterable<int>? get positions;
  @override
  @JsonKey(ignore: true)
  _$$_InsightEventCopyWith<_$_InsightEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
