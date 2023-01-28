import 'package:algolia_lite/src/model/search_request.dart';
import 'package:equatable/equatable.dart';

/// Represents a multi search request.
class MultiSearchRequest extends Equatable {
  /// A list of search requests.
  final List<SearchRequest> requests;

  /// Allows optimizing execution of the queries.
  /// The following values are allowed: `none` and `stopIfEnoughMatches`.
  final String strategy;

  /// Create a [MultiSearchRequest] instance.
  const MultiSearchRequest({
    required this.requests,
    this.strategy = 'none',
  });

  @override
  List<Object?> get props => [requests, strategy];
}
