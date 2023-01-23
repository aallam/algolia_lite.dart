/// Represents a search request.
class SearchRequest {
  /// The index to query.
  final String indexName;

  /// [Search parameters](https://www.algolia.com/doc/api-reference/search-api-parameters/).
  final Map<String, dynamic>? params;

  /// Create a [SearchRequest] instance.
  SearchRequest({
    required this.indexName,
    this.params,
  });
}

/// Represents a multi search request.
class MultiSearchRequest {
  /// A list of search requests.
  final List<SearchRequest> requests;

  /// Allows optimizing execution of the queries.
  /// The following values are allowed: `none` and `stopIfEnoughMatches`.
  final String strategy;

  /// Create a [MultiSearchRequest] instance.
  MultiSearchRequest({
    required this.requests,
    this.strategy = 'none',
  });
}

/// Represents a facet search request.
class FacetSearchRequest {
  /// The index to query.
  final String indexName;

  /// Facet to search.
  final String facetName;

  /// [Search parameters](https://www.algolia.com/doc/api-reference/search-api-parameters/).
  final Map<String, dynamic>? params;

  /// Text to search inside the facet’s values.
  final String? facetQuery;

  /// The maximum number of facet hits to return.
  final int? maxFacetHits;

  /// Create a [FacetSearchRequest] instance.
  FacetSearchRequest(
      {required this.indexName,
      required this.facetName,
      this.params,
      this.facetQuery,
      this.maxFacetHits});
}
