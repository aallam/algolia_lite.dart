import 'package:algolia_lite/src/model/extension.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'search_response.g.dart';

/// Search response.
@deserializable
class SearchResponse extends Equatable {
  /// If a search encounters an index that is being A/B tested, abTestID reports
  /// the ongoing A/B test ID.
  final int? abTestID;

  /// If a search encounters an index that is being A/B tested, abTestVariantID
  /// reports the variant ID of the index used (starting at 1).
  final int? abTestVariantID;

  /// The computed geo location.
  final String? aroundLatLng;

  /// The automatically computed radius.
  final String? automaticRadius;

  /// Whether the facet count is exhaustive or approximate.
  final bool? exhaustiveFacetsCount;

  /// Indicate if the nbHits count was exhaustive or approximate.
  final bool? exhaustiveNbHits;

  /// Indicate if the typo-tolerance search was exhaustive or approximate
  /// (only included when typo-tolerance is enabled).
  final bool? exhaustiveTypo;

  /// A mapping of each facet name to the corresponding facet counts.
  final Map<String, int>? facets;

  /// Statistics for numerical facets.
  @JsonKey(name: 'facets_stats')
  final Map<String, int>? facetsStats;

  /// The number of hits per page.
  final int hitsPerPage;

  /// Index name used for the query.
  final String? index;

  /// Index name used for the query. In the case of an A/B test,
  /// the targeted index isn't always the index used by the query.
  final String? indexUsed;

  /// Used to return warnings about the query.
  final String? message;

  /// Number of hits that the search query matched.
  final int nbHits;

  /// Number of pages available for the current query.
  final int nbPages;

  /// The number of hits selected and sorted by the relevant sort algorithm.
  final int? nbSortedHits;

  /// Specify the page to retrieve.
  final int page;

  /// A url-encoded string of all search parameters.
  final String params;

  /// The query string that will be searched, after normalization.
  final String? parsedQuery;

  /// Time the server took to process the request, in milliseconds.
  final int processingTimeMS;

  /// The text to search in the index.
  final String query;

  /// A markup text indicating which parts of the original query have been
  /// removed in order to retrieve a non-empty result set.
  final String? queryAfterRemoval;

  /// Actual host name of the server that processed the request.
  final String? serverUsed;

  /// Lets you store custom data in your indices.
  final Map<String, dynamic>? userData;

  /// Content defining how the search interface should be rendered.
  /// Can be set via the settings for a default value and can be overridden
  /// via rules.
  final Map<String, dynamic>? renderingContent;

  /// Array of objects (hit)
  final Iterable<Map<String, dynamic>> hits;

  /// Private constructor.
  @internal
  const SearchResponse({
    this.abTestID,
    this.abTestVariantID,
    this.aroundLatLng,
    this.automaticRadius,
    this.exhaustiveFacetsCount,
    required this.exhaustiveNbHits,
    this.exhaustiveTypo,
    this.facets,
    this.facetsStats,
    required this.hitsPerPage,
    this.index,
    this.indexUsed,
    this.message,
    required this.nbHits,
    required this.nbPages,
    this.nbSortedHits,
    required this.page,
    required this.params,
    this.parsedQuery,
    required this.processingTimeMS,
    required this.query,
    required this.queryAfterRemoval,
    required this.serverUsed,
    this.userData,
    required this.renderingContent,
    required this.hits,
  });

  @internal
  factory SearchResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseFromJson(json);

  @override
  List<Object?> get props => [
        abTestID,
        abTestVariantID,
        aroundLatLng,
        automaticRadius,
        exhaustiveFacetsCount,
        exhaustiveNbHits,
        exhaustiveTypo,
        facets,
        facetsStats,
        hitsPerPage,
        index,
        indexUsed,
        message,
        nbHits,
        nbPages,
        nbSortedHits,
        page,
        params,
        parsedQuery,
        processingTimeMS,
        query,
        queryAfterRemoval,
        serverUsed,
        userData,
        renderingContent,
        hits,
      ];
}
