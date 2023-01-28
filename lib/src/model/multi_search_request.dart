import 'package:algolia_lite/src/model/extension.dart';
import 'package:algolia_lite/src/model/search_request.dart';
import 'package:algolia_lite/src/search/encode.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'multi_search_request.g.dart';

/// Represents a multi search request.
@serializable
class MultiSearchRequest {
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
}
