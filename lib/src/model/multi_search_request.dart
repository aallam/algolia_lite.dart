import 'package:algolia_lite/src/model/extension.dart';
import 'package:algolia_lite/src/model/search_request.dart';
import 'package:algolia_lite/src/search/encode.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'multi_search_request.g.dart';

/// Represents a multi search request.
@serializable
class MultiSearchRequest extends Equatable {
  /// A list of search requests.
  @JsonKey(toJson: requestsToJson)
  final Iterable<SearchRequest> requests;

  /// Allows optimizing execution of the queries.
  /// The following values are allowed: `none` and `stopIfEnoughMatches`.
  final String strategy;

  /// Create a [MultiSearchRequest] instance.
  const MultiSearchRequest({
    required this.requests,
    this.strategy = 'none',
  });

  @internal
  Map<String, dynamic> toJson() => _$MultiSearchRequestToJson(this);

  @override
  @ignore
  List<Object?> get props => [requests, strategy];

  @override
  @ignore
  // ignore: hash_and_equals
  int get hashCode => super.hashCode;

  @override
  @ignore
  bool? get stringify => super.stringify;
}
