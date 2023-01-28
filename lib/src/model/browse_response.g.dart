// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'browse_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BrowseResponse _$BrowseResponseFromJson(Map<String, dynamic> json) =>
    BrowseResponse(
      abTestID: json['abTestID'] as int?,
      abTestVariantID: json['abTestVariantID'] as int?,
      aroundLatLng: json['aroundLatLng'] as String?,
      automaticRadius: json['automaticRadius'] as String?,
      exhaustiveFacetsCount: json['exhaustiveFacetsCount'] as bool?,
      exhaustiveNbHits: json['exhaustiveNbHits'] as bool?,
      exhaustiveTypo: json['exhaustiveTypo'] as bool?,
      facets: (json['facets'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as int),
      ),
      facetsStats: (json['facets_stats'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as int),
      ),
      hitsPerPage: json['hitsPerPage'] as int,
      index: json['index'] as String?,
      indexUsed: json['indexUsed'] as String?,
      message: json['message'] as String?,
      nbHits: json['nbHits'] as int,
      nbPages: json['nbPages'] as int,
      nbSortedHits: json['nbSortedHits'] as int?,
      page: json['page'] as int,
      params: json['params'] as String,
      parsedQuery: json['parsedQuery'] as String?,
      processingTimeMS: json['processingTimeMS'] as int,
      query: json['query'] as String,
      queryAfterRemoval: json['queryAfterRemoval'] as String?,
      serverUsed: json['serverUsed'] as String?,
      userData: json['userData'] as Map<String, dynamic>?,
      renderingContent: json['renderingContent'] as Map<String, dynamic>?,
      hits:
          (json['hits'] as List<dynamic>).map((e) => e as Map<String, dynamic>),
      cursor: json['cursor'] as String?,
    );
