// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'multi_search_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MultiSearchRequest {
  /// A list of search requests.
  @JsonKey(toJson: requestsToJson)
  Iterable<SearchRequest> get requests => throw _privateConstructorUsedError;

  /// Allows optimizing execution of the queries.
  /// The following values are allowed: `none` and `stopIfEnoughMatches`.
  String get strategy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MultiSearchRequestCopyWith<MultiSearchRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultiSearchRequestCopyWith<$Res> {
  factory $MultiSearchRequestCopyWith(
          MultiSearchRequest value, $Res Function(MultiSearchRequest) then) =
      _$MultiSearchRequestCopyWithImpl<$Res, MultiSearchRequest>;
  @useResult
  $Res call(
      {@JsonKey(toJson: requestsToJson) Iterable<SearchRequest> requests,
      String strategy});
}

/// @nodoc
class _$MultiSearchRequestCopyWithImpl<$Res, $Val extends MultiSearchRequest>
    implements $MultiSearchRequestCopyWith<$Res> {
  _$MultiSearchRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requests = null,
    Object? strategy = null,
  }) {
    return _then(_value.copyWith(
      requests: null == requests
          ? _value.requests
          : requests // ignore: cast_nullable_to_non_nullable
              as Iterable<SearchRequest>,
      strategy: null == strategy
          ? _value.strategy
          : strategy // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MultiSearchRequestCopyWith<$Res>
    implements $MultiSearchRequestCopyWith<$Res> {
  factory _$$_MultiSearchRequestCopyWith(_$_MultiSearchRequest value,
          $Res Function(_$_MultiSearchRequest) then) =
      __$$_MultiSearchRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(toJson: requestsToJson) Iterable<SearchRequest> requests,
      String strategy});
}

/// @nodoc
class __$$_MultiSearchRequestCopyWithImpl<$Res>
    extends _$MultiSearchRequestCopyWithImpl<$Res, _$_MultiSearchRequest>
    implements _$$_MultiSearchRequestCopyWith<$Res> {
  __$$_MultiSearchRequestCopyWithImpl(
      _$_MultiSearchRequest _value, $Res Function(_$_MultiSearchRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requests = null,
    Object? strategy = null,
  }) {
    return _then(_$_MultiSearchRequest(
      requests: null == requests
          ? _value.requests
          : requests // ignore: cast_nullable_to_non_nullable
              as Iterable<SearchRequest>,
      strategy: null == strategy
          ? _value.strategy
          : strategy // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_MultiSearchRequest implements _MultiSearchRequest {
  const _$_MultiSearchRequest(
      {@JsonKey(toJson: requestsToJson) required this.requests,
      this.strategy = 'none'});

  /// A list of search requests.
  @override
  @JsonKey(toJson: requestsToJson)
  final Iterable<SearchRequest> requests;

  /// Allows optimizing execution of the queries.
  /// The following values are allowed: `none` and `stopIfEnoughMatches`.
  @override
  @JsonKey()
  final String strategy;

  @override
  String toString() {
    return 'MultiSearchRequest(requests: $requests, strategy: $strategy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MultiSearchRequest &&
            const DeepCollectionEquality().equals(other.requests, requests) &&
            (identical(other.strategy, strategy) ||
                other.strategy == strategy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(requests), strategy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MultiSearchRequestCopyWith<_$_MultiSearchRequest> get copyWith =>
      __$$_MultiSearchRequestCopyWithImpl<_$_MultiSearchRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MultiSearchRequestToJson(
      this,
    );
  }
}

abstract class _MultiSearchRequest implements MultiSearchRequest {
  const factory _MultiSearchRequest(
      {@JsonKey(toJson: requestsToJson)
          required final Iterable<SearchRequest> requests,
      final String strategy}) = _$_MultiSearchRequest;

  @override

  /// A list of search requests.
  @JsonKey(toJson: requestsToJson)
  Iterable<SearchRequest> get requests;
  @override

  /// Allows optimizing execution of the queries.
  /// The following values are allowed: `none` and `stopIfEnoughMatches`.
  String get strategy;
  @override
  @JsonKey(ignore: true)
  _$$_MultiSearchRequestCopyWith<_$_MultiSearchRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
