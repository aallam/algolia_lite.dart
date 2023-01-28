import 'package:algolia_lite/src/model/search_params.dart';
import 'package:equatable/equatable.dart';

/// Represents a search request.
class SearchRequest extends Equatable {
  /// The index to query.
  final String indexName;

  /// [Search parameters](https://www.algolia.com/doc/api-reference/search-api-parameters/).
  final SearchParams? params;

  /// Create a [SearchRequest] instance.
  const SearchRequest({
    required this.indexName,
    this.params,
  });

  @override
  List<Object?> get props => [indexName, params];
}
