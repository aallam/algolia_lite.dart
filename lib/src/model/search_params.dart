import 'package:algolia_lite/src/model/extension.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'search_params.g.dart';

@serializable
@CopyWith()
class SearchParams {
  /// Search query string
  final String? query;

  /// Search page number
  final int? page;

  /// Number of hits per page
  final int? hitsPerPage;

  /// Search facets list
  final Iterable<String>? facets;

  /// Disjunctive facets list
  final Set<String>? disjunctiveFacets;

  /// Set of filter groups
  final String? filters;

  /// Search rule contexts
  final Iterable<String>? ruleContexts;

  /// Filter hits by facet value.
  final Iterable<String>? facetFilters;

  /// List of attributes to highlight.
  final Iterable<String>? attributesToHighlight;

  /// Gives control over which attributes to retrieve and which not to retrieve.
  final Iterable<String>? attributesToRetrieve;

  /// List of attributes to snippet,
  /// with an optional maximum number of words
  /// to snippet.
  final Iterable<String>? attributesToSnippet;

  /// The HTML name to insert after the highlighted parts in all highlight
  /// and snippet results.
  final String? highlightPostTag;

  /// The HTML name to insert before the highlighted parts in all highlight
  /// and snippet results.
  final String? highlightPreTag;

  /// Maximum number of facet hits to return during a search for facet values.
  final int? maxFacetHits;

  /// Maximum number of facet values to return for each facet during a regular
  /// search.
  final int? maxValuesPerFacet;

  /// Filter on numeric attributes.
  final Iterable<String>? numericFilters;

  /// Create filters for ranking purposes,
  /// where records that match the filter
  /// are ranked highest.
  final Iterable<String>? optionalFilters;

  /// Determines how to calculate the total score for filtering.
  final bool? sumOrFiltersScore;

  /// Filter hits by tags.
  final Iterable<String>? tagFilters;

  /// Associates a certain user token with the current search.
  final String? userToken;

  /// Whether the current query will be taken into account in the Analytics.
  final bool? analytics;

  /// Overrides the query parameter and performs a more generic search that can
  /// be used to find "similar" results.
  final String? similarQuery;

  /// Determines how to calculate the total score for filtering.
  final bool? sumOrFiltersScores;

  /// Force faceting to be applied after de-duplication
  /// (via the Distinct setting).
  final bool? facetingAfterDistinct;

  /// Controls how facet values are fetched.
  final String? sortFacetValuesBy;

  /// Set the number of hits to retrieve (used only with offset).
  final int? length;

  /// Search for entries around a central geolocation, enabling a geo search
  /// within a circular area
  final String? aroundLatLng;

  /// Search for entries around a given location automatically computed from
  /// the requester's IP address
  final bool? aroundLatLngViaIP;

  /// Define the maximum radius for a geo search (in meters).
  final String? aroundRadius;

  /// Precision of geo search (in meters), to add grouping by geo location
  /// to the ranking formula.
  final int? aroundPrecision;

  /// Minimum radius (in meters) used for a geo search when aroundRadius
  /// is not set.
  final int? minimumAroundRadius;

  /// Search inside a rectangular area (in geo coordinates).
  final Iterable<int>? insideBoundingBox;

  /// Search inside a polygon (in geo coordinates).
  final Iterable<int>? insidePolygon;

  /// This parameter changes the default values of certain parameters and
  /// settings that work best for a natural language query, such as
  /// ignorePlurals, removeStopWords, removeWordsIfNoResults,
  /// analyticsTags and ruleContexts. These parameters and settings work
  /// well together when the query is formatted in natural language
  /// instead of keywords, for example when your user performs a voice
  /// search.
  final Iterable<String>? naturalLanguages;

  /// Define the impact of the Personalization feature.
  final int? personalizationImpact;

  /// Retrieve detailed ranking information.
  final bool? getRankingInfo;

  /// Enable the Click Analytics feature.
  final bool? clickAnalytics;

  /// List of tags to apply to the query for analytics purposes.
  final Iterable<String>? analyticsTags;

  /// Whether to include or exclude a query from the processing-time percentile
  /// computation.
  final bool? percentileComputation;

  /// Whether this search should participate in running AB tests.
  final bool? enableABTest;

  /// Whether this search should use AI Re-Ranking.
  final bool? enableReRanking;

  /// When Dynamic Re-Ranking is enabled, only records that match these filters
  /// will be impacted by Dynamic Re-Ranking.
  final String? reRankingApplyFilter;

  /// Extra fields
  @ignore
  final Map<String, dynamic> extra;

  const SearchParams({
    this.query,
    this.page,
    this.hitsPerPage,
    this.facets,
    this.disjunctiveFacets,
    this.filters,
    this.ruleContexts,
    this.facetFilters,
    this.attributesToHighlight,
    this.attributesToRetrieve,
    this.attributesToSnippet,
    this.highlightPostTag,
    this.highlightPreTag,
    this.maxFacetHits,
    this.maxValuesPerFacet,
    this.numericFilters,
    this.optionalFilters,
    this.sumOrFiltersScore,
    this.tagFilters,
    this.userToken,
    this.analytics,
    this.similarQuery,
    this.sumOrFiltersScores,
    this.facetingAfterDistinct,
    this.sortFacetValuesBy,
    this.length,
    this.aroundLatLng,
    this.aroundLatLngViaIP,
    this.aroundRadius,
    this.aroundPrecision,
    this.minimumAroundRadius,
    this.insideBoundingBox,
    this.insidePolygon,
    this.naturalLanguages,
    this.personalizationImpact,
    this.getRankingInfo,
    this.clickAnalytics,
    this.analyticsTags,
    this.percentileComputation,
    this.enableABTest,
    this.enableReRanking,
    this.reRankingApplyFilter,
    this.extra = const {},
  });

  @internal
  Map<String, dynamic> toJson() => _$SearchParamsToJson(this)..addAll(extra);
}
