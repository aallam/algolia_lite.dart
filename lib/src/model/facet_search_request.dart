import 'package:algolia_lite/src/model/extension.dart';
import 'package:algolia_lite/src/model/search_params.dart';
import 'package:algolia_lite/src/search/encode.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'facet_search_request.g.dart';

/// Represents a facet search request.
@serializable
class FacetSearchRequest {
  /// The index to query.
  @ignore
  final String indexName;

  /// Facet to search.
  @ignore
  final String facetName;

  /// Search params.
  @JsonKey(toJson: encodeParams)
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

  @internal
  Map<String, dynamic> toJson() => _$FacetSearchRequestToJson(this);
}
