import 'package:algolia_lite/src/model/extension.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_params.freezed.dart';

part 'search_params.g.dart';

@Freezed(toJson: true)
class SearchParams with _$SearchParams {
  const factory SearchParams({
    /// Search query string
    String? query,

    /// Search page number
    int? page,

    /// Number of hits per page
    int? hitsPerPage,

    /// Search facets list
    Iterable<String>? facets,

    /// Disjunctive facets list
    Set<String>? disjunctiveFacets,

    /// Set of filter groups
    String? filters,

    /// Search rule contexts
    Iterable<String>? ruleContexts,

    /// Filter hits by facet value.
    Iterable<String>? facetFilters,

    /// List of attributes to highlight.
    Iterable<String>? attributesToHighlight,

    /// Gives control over which attributes to retrieve and which not to retrieve.
    Iterable<String>? attributesToRetrieve,

    /// List of attributes to snippet,
    /// with an optional maximum number of words
    /// to snippet.
    Iterable<String>? attributesToSnippet,

    /// The HTML name to insert after the highlighted parts in all highlight
    /// and snippet results.
    String? highlightPostTag,

    /// The HTML name to insert before the highlighted parts in all highlight
    /// and snippet results.
    String? highlightPreTag,

    /// Maximum number of facet hits to return during a search for facet values.
    int? maxFacetHits,

    /// Maximum number of facet values to return for each facet during a regular
    /// search.
    int? maxValuesPerFacet,

    /// Filter on numeric attributes.
    Iterable<String>? numericFilters,

    /// Create filters for ranking purposes,
    /// where records that match the filter
    /// are ranked highest.
    Iterable<String>? optionalFilters,

    /// Determines how to calculate the total score for filtering.
    bool? sumOrFiltersScore,

    /// Filter hits by tags.
    Iterable<String>? tagFilters,

    /// Associates a certain user token with the current search.
    String? userToken,

    /// Whether the current query will be taken into account in the Analytics.
    bool? analytics,

    /// Overrides the query parameter and performs a more generic search that can
    /// be used to find "similar" results.
    String? similarQuery,

    /// Determines how to calculate the total score for filtering.
    bool? sumOrFiltersScores,

    /// Force faceting to be applied after de-duplication
    /// (via the Distinct setting).
    bool? facetingAfterDistinct,

    /// Controls how facet values are fetched.
    String? sortFacetValuesBy,

    /// Set the number of hits to retrieve (used only with offset).
    int? length,

    /// Search for entries around a central geolocation, enabling a geo search
    /// within a circular area
    String? aroundLatLng,

    /// Search for entries around a given location automatically computed from
    /// the requester's IP address
    bool? aroundLatLngViaIP,

    /// Define the maximum radius for a geo search (in meters).
    String? aroundRadius,

    /// Precision of geo search (in meters), to add grouping by geo location
    /// to the ranking formula.
    int? aroundPrecision,

    /// Minimum radius (in meters) used for a geo search when aroundRadius
    /// is not set.
    int? minimumAroundRadius,

    /// Search inside a rectangular area (in geo coordinates).
    Iterable<int>? insideBoundingBox,

    /// Search inside a polygon (in geo coordinates).
    Iterable<int>? insidePolygon,

    /// This parameter changes the default values of certain parameters and
    /// settings that work best for a natural language query, such as
    /// ignorePlurals, removeStopWords, removeWordsIfNoResults,
    /// analyticsTags and ruleContexts. These parameters and settings work
    /// well together when the query is formatted in natural language
    /// instead of keywords, for example when your user performs a voice
    /// search.
    Iterable<String>? naturalLanguages,

    /// Define the impact of the Personalization feature.
    int? personalizationImpact,

    /// Retrieve detailed ranking information.
    bool? getRankingInfo,

    /// Enable the Click Analytics feature.
    bool? clickAnalytics,

    /// List of tags to apply to the query for analytics purposes.
    Iterable<String>? analyticsTags,

    /// Whether to include or exclude a query from the processing-time percentile
    /// computation.
    bool? percentileComputation,

    /// Whether this search should participate in running AB tests.
    bool? enableABTest,

    /// Whether this search should use AI Re-Ranking.
    bool? enableReRanking,

    /// When Dynamic Re-Ranking is enabled, only records that match these filters
    /// will be impacted by Dynamic Re-Ranking.
    String? reRankingApplyFilter,

    /// Extra custom parameters
    // ignore: invalid_annotation_target
    @ignore Map<String, dynamic>? extra,
  }) = _SearchParams;

  @override
  Map<String, dynamic> toJson() => super.toJson()..addAll(extra ?? {});
}
