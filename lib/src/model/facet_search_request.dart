import 'package:algolia_lite/src/model/search_params.dart';
import 'package:equatable/equatable.dart';

/// Represents a facet search request.
class FacetSearchRequest extends Equatable {
  /// The index to query.
  final String indexName;

  /// Facet to search.
  final String facetName;

  /// Search params.
  final SearchParams? params;

  /// Text to search inside the facet’s values.
  final String? facetQuery;

  /// The maximum number of facet hits to return.
  final int? maxFacetHits;

  /// Create a [FacetSearchRequest] instance.
  const FacetSearchRequest({
    required this.indexName,
    required this.facetName,
    this.params,
    this.facetQuery,
    this.maxFacetHits,
  });

  @override
  List<Object?> get props =>
      [indexName, facetName, params, facetQuery, maxFacetHits];
}
