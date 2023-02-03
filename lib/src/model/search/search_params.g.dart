// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$$_SearchParamsToJson(_$_SearchParams instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('query', instance.query);
  writeNotNull('page', instance.page);
  writeNotNull('hitsPerPage', instance.hitsPerPage);
  writeNotNull('facets', instance.facets?.toList());
  writeNotNull('disjunctiveFacets', instance.disjunctiveFacets?.toList());
  writeNotNull('filters', instance.filters);
  writeNotNull('ruleContexts', instance.ruleContexts?.toList());
  writeNotNull('facetFilters', instance.facetFilters?.toList());
  writeNotNull(
      'attributesToHighlight', instance.attributesToHighlight?.toList());
  writeNotNull('attributesToRetrieve', instance.attributesToRetrieve?.toList());
  writeNotNull('attributesToSnippet', instance.attributesToSnippet?.toList());
  writeNotNull('highlightPostTag', instance.highlightPostTag);
  writeNotNull('highlightPreTag', instance.highlightPreTag);
  writeNotNull('maxFacetHits', instance.maxFacetHits);
  writeNotNull('maxValuesPerFacet', instance.maxValuesPerFacet);
  writeNotNull('numericFilters', instance.numericFilters?.toList());
  writeNotNull('optionalFilters', instance.optionalFilters?.toList());
  writeNotNull('sumOrFiltersScore', instance.sumOrFiltersScore);
  writeNotNull('tagFilters', instance.tagFilters?.toList());
  writeNotNull('userToken', instance.userToken);
  writeNotNull('analytics', instance.analytics);
  writeNotNull('similarQuery', instance.similarQuery);
  writeNotNull('sumOrFiltersScores', instance.sumOrFiltersScores);
  writeNotNull('facetingAfterDistinct', instance.facetingAfterDistinct);
  writeNotNull('sortFacetValuesBy', instance.sortFacetValuesBy);
  writeNotNull('length', instance.length);
  writeNotNull('aroundLatLng', instance.aroundLatLng);
  writeNotNull('aroundLatLngViaIP', instance.aroundLatLngViaIP);
  writeNotNull('aroundRadius', instance.aroundRadius);
  writeNotNull('aroundPrecision', instance.aroundPrecision);
  writeNotNull('minimumAroundRadius', instance.minimumAroundRadius);
  writeNotNull('insideBoundingBox', instance.insideBoundingBox?.toList());
  writeNotNull('insidePolygon', instance.insidePolygon?.toList());
  writeNotNull('naturalLanguages', instance.naturalLanguages?.toList());
  writeNotNull('personalizationImpact', instance.personalizationImpact);
  writeNotNull('getRankingInfo', instance.getRankingInfo);
  writeNotNull('clickAnalytics', instance.clickAnalytics);
  writeNotNull('analyticsTags', instance.analyticsTags?.toList());
  writeNotNull('percentileComputation', instance.percentileComputation);
  writeNotNull('enableABTest', instance.enableABTest);
  writeNotNull('enableReRanking', instance.enableReRanking);
  writeNotNull('reRankingApplyFilter', instance.reRankingApplyFilter);
  return val;
}
