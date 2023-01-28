import 'package:algolia_lite/algolia_lite.dart';
import 'package:algolia_lite/src/model/extension.dart';
import 'package:meta/meta.dart';

part 'browse_response.g.dart';

/// Browse response.
@deserializable
class BrowseResponse extends SearchResponse {
  /// Cursor indicating the location to resume browsing from.
  /// Must match the value returned by the previous call.
  final String? cursor;

  @internal
  const BrowseResponse({
    super.abTestID,
    super.abTestVariantID,
    super.aroundLatLng,
    super.automaticRadius,
    super.exhaustiveFacetsCount,
    required super.exhaustiveNbHits,
    super.exhaustiveTypo,
    super.facets,
    super.facetsStats,
    required super.hitsPerPage,
    super.index,
    super.indexUsed,
    super.message,
    required super.nbHits,
    required super.nbPages,
    super.nbSortedHits,
    required super.page,
    required super.params,
    super.parsedQuery,
    required super.processingTimeMS,
    required super.query,
    required super.queryAfterRemoval,
    required super.serverUsed,
    super.userData,
    required super.renderingContent,
    required super.hits,
    required this.cursor,
  });

  @internal
  factory BrowseResponse.fromJson(Map<String, dynamic> json) =>
      _$BrowseResponseFromJson(json);
}
