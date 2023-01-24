import 'package:collection/collection.dart';

/// Represents a search request.
class SearchRequest extends DelegatingMap<String, dynamic> {
  /// The index to query.
  final String indexName;

  /// [Search parameters](https://www.algolia.com/doc/api-reference/search-api-parameters/).
  final Map<String, dynamic> params;

  /// Create a [SearchRequest] instance.
  SearchRequest(String indexName)
      : this.create(indexName: indexName, params: {});

  /// Create a [SearchRequest] instance.
  SearchRequest.create({
    required this.indexName,
    required this.params,
  }) : super(params);
}

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

/// Represents a facet search request.
class FacetSearchRequest extends DelegatingMap<String, dynamic> {
  /// The index to query.
  final String indexName;

  /// Facet to search.
  final String facetName;

  /// [Search parameters](https://www.algolia.com/doc/api-reference/search-api-parameters/).
  final Map<String, dynamic> params;

  /// Text to search inside the facet’s values.
  final String? facetQuery;

  /// The maximum number of facet hits to return.
  final int? maxFacetHits;

  /// Create a [FacetSearchRequest] instance.
  FacetSearchRequest({
    required String indexName,
    required String facetName,
    Map<String, dynamic>? params,
    String? facetQuery,
    int? maxFacetHits,
  }) : this.create(
          indexName: indexName,
          facetName: facetName,
          params: params ?? {},
          facetQuery: facetQuery,
          maxFacetHits: maxFacetHits,
        );

  /// Create a [FacetSearchRequest] instance.
  FacetSearchRequest.create({
    required this.indexName,
    required this.facetName,
    required this.params,
    this.facetQuery,
    this.maxFacetHits,
  }) : super(params);
}

/// Represents objects search request.
class ObjectsRequest extends DelegatingList<ObjectRequest> {
  /// A list of search requests.
  final List<ObjectRequest> requests;

  /// Create a [MultiSearchRequest] instance.
  ObjectsRequest({required this.requests}) : super(requests);
}

/// Represents an object search request.
class ObjectRequest {
  /// Name of the index containing the object
  final String indexName;

  /// ID of the object within that index
  final String objectID;

  /// List of attributes to retrieve. By default, all retrievable attributes
  /// are returned.
  final List<String>? attributesToRetrieve;

  /// Create a [ObjectRequest] instance.
  ObjectRequest({
    required this.indexName,
    required this.objectID,
    this.attributesToRetrieve,
  });
}
