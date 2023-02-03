import 'package:freezed_annotation/freezed_annotation.dart';

part 'browse_response.freezed.dart';

part 'browse_response.g.dart';

/// Browse response.
@Freezed(toJson: false)
class BrowseResponse with _$BrowseResponse {
  @internal
  const factory BrowseResponse({
    /// If a search encounters an index that is being A/B tested, abTestID reports
    /// the ongoing A/B test ID.
    int? abTestID,

    /// If a search encounters an index that is being A/B tested, abTestVariantID
    /// reports the variant ID of the index used (starting at 1).
    int? abTestVariantID,

    /// The computed geo location.
    String? aroundLatLng,

    /// The automatically computed radius.
    String? automaticRadius,

    /// Whether the facet count is exhaustive or approximate.
    bool? exhaustiveFacetsCount,

    /// Indicate if the nbHits count was exhaustive or approximate.
    bool? exhaustiveNbHits,

    /// Indicate if the typo-tolerance search was exhaustive or approximate
    /// (only included when typo-tolerance is enabled).
    bool? exhaustiveTypo,

    /// A mapping of each facet name to the corresponding facet counts.
    Map<String, int>? facets,

    /// Statistics for numerical facets.
    @JsonKey(name: 'facets_stats') Map<String, int>? facetsStats,

    /// The number of hits per page.
    required int hitsPerPage,

    /// Index name used for the query.
    String? index,

    /// Index name used for the query. In the case of an A/B test,
    /// the targeted index isn't always the index used by the query.
    String? indexUsed,

    /// Used to return warnings about the query.
    String? message,

    /// Number of hits that the search query matched.
    required int nbHits,

    /// Number of pages available for the current query.
    required int nbPages,

    /// The number of hits selected and sorted by the relevant sort algorithm.
    int? nbSortedHits,

    /// Specify the page to retrieve.
    required int page,

    /// A url-encoded string of all search parameters.
    required String params,

    /// The query string that will be searched, after normalization.
    String? parsedQuery,

    /// Time the server took to process the request, in milliseconds.
    required int processingTimeMS,

    /// The text to search in the index.
    required String query,

    /// A markup text indicating which parts of the original query have been
    /// removed in order to retrieve a non-empty result set.
    String? queryAfterRemoval,

    /// Actual host name of the server that processed the request.
    String? serverUsed,

    /// Lets you store custom data in your indices.
    Map<String, dynamic>? userData,

    /// Content defining how the search interface should be rendered.
    /// Can be set via the settings for a default value and can be overridden
    /// via rules.
    Map<String, dynamic>? renderingContent,

    /// Array of objects (hit)
    required Iterable<Map<String, dynamic>> hits,

    /// Cursor indicating the location to resume browsing from.
    /// Must match the value returned by the previous call.
    String? cursor,
  }) = _BrowseResponse;

  @internal
  factory BrowseResponse.fromJson(Map<String, dynamic> json) =>
      _$BrowseResponseFromJson(json);
}
