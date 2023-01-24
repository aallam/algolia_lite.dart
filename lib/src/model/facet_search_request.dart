import 'package:collection/collection.dart';

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
