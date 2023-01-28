import 'package:algolia_lite/src/model/search_params.dart';

/// Represents a search request.
class SearchRequest {
  /// The index to query.
  final String indexName;

  /// [Search parameters](https://www.algolia.com/doc/api-reference/search-api-parameters/).
  final SearchParams? params;

  /// Create a [SearchRequest] instance.
  SearchRequest(String indexName) : this.create(indexName: indexName);

  /// Create a [SearchRequest] instance.
  SearchRequest.create({
    required this.indexName,
    this.params,
  });
}
