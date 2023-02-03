// ignore_for_file: invalid_annotation_target

import 'package:algolia_lite/src/model/extension.dart';
import 'package:algolia_lite/src/model/search/search_params.dart';
import 'package:algolia_lite/src/search/encode.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'facet_search_request.freezed.dart';

part 'facet_search_request.g.dart';

/// Represents a facet search request.
@Freezed(toJson: true)
class FacetSearchRequest with _$FacetSearchRequest {
  /// Create a [FacetSearchRequest] instance.
  const factory FacetSearchRequest({
    /// The index to query.
    @ignore required String indexName,

    /// Facet to search.
    @ignore required String facetName,

    /// Search params.
    @JsonKey(toJson: encodeParams) SearchParams? params,

    /// Text to search inside the facet’s values.
    String? facetQuery,

    /// The maximum number of facet hits to return.
    int? maxFacetHits,
  }) = _FacetSearchRequest;
}
