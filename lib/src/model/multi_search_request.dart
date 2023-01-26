import 'package:algolia_lite/src/model/search_request.dart';
import 'package:collection/collection.dart';

/// Represents a multi search request.
class MultiSearchRequest extends DelegatingList<SearchRequest> {
  /// A list of search requests.
  final List<SearchRequest> requests;

  /// Allows optimizing execution of the queries.
  /// The following values are allowed: `none` and `stopIfEnoughMatches`.
  final String strategy;

  /// Create a [MultiSearchRequest] instance.
  MultiSearchRequest({
    required this.requests,
    this.strategy = 'none',
  }) : super(requests);
}
