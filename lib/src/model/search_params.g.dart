// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_params.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SearchParamsCWProxy {
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// SearchParams(...).copyWith(id: 12, name: "My name")
  /// ````
  SearchParams call({
    String? query,
    int? page,
    int? hitsPerPage,
    Iterable<String>? facets,
    Set<String>? disjunctiveFacets,
    String? filters,
    Iterable<String>? ruleContexts,
    Iterable<String>? facetFilters,
    Iterable<String>? attributesToHighlight,
    Iterable<String>? attributesToRetrieve,
    Iterable<String>? attributesToSnippet,
    String? highlightPostTag,
    String? highlightPreTag,
    int? maxFacetHits,
    int? maxValuesPerFacet,
    Iterable<String>? numericFilters,
    Iterable<String>? optionalFilters,
    bool? sumOrFiltersScore,
    Iterable<String>? tagFilters,
    String? userToken,
    bool? analytics,
    String? similarQuery,
    bool? sumOrFiltersScores,
    bool? facetingAfterDistinct,
    String? sortFacetValuesBy,
    int? length,
    String? aroundLatLng,
    bool? aroundLatLngViaIP,
    String? aroundRadius,
    int? aroundPrecision,
    int? minimumAroundRadius,
    Iterable<int>? insideBoundingBox,
    Iterable<int>? insidePolygon,
    Iterable<String>? naturalLanguages,
    int? personalizationImpact,
    bool? getRankingInfo,
    bool? clickAnalytics,
    Iterable<String>? analyticsTags,
    bool? percentileComputation,
    bool? enableABTest,
    bool? enableReRanking,
    String? reRankingApplyFilter,
    Map<String, dynamic>? extra,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSearchParams.copyWith(...)`.
class _$SearchParamsCWProxyImpl implements _$SearchParamsCWProxy {
  const _$SearchParamsCWProxyImpl(this._value);

  final SearchParams _value;

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// SearchParams(...).copyWith(id: 12, name: "My name")
  /// ````
  SearchParams call({
    Object? query = const $CopyWithPlaceholder(),
    Object? page = const $CopyWithPlaceholder(),
    Object? hitsPerPage = const $CopyWithPlaceholder(),
    Object? facets = const $CopyWithPlaceholder(),
    Object? disjunctiveFacets = const $CopyWithPlaceholder(),
    Object? filters = const $CopyWithPlaceholder(),
    Object? ruleContexts = const $CopyWithPlaceholder(),
    Object? facetFilters = const $CopyWithPlaceholder(),
    Object? attributesToHighlight = const $CopyWithPlaceholder(),
    Object? attributesToRetrieve = const $CopyWithPlaceholder(),
    Object? attributesToSnippet = const $CopyWithPlaceholder(),
    Object? highlightPostTag = const $CopyWithPlaceholder(),
    Object? highlightPreTag = const $CopyWithPlaceholder(),
    Object? maxFacetHits = const $CopyWithPlaceholder(),
    Object? maxValuesPerFacet = const $CopyWithPlaceholder(),
    Object? numericFilters = const $CopyWithPlaceholder(),
    Object? optionalFilters = const $CopyWithPlaceholder(),
    Object? sumOrFiltersScore = const $CopyWithPlaceholder(),
    Object? tagFilters = const $CopyWithPlaceholder(),
    Object? userToken = const $CopyWithPlaceholder(),
    Object? analytics = const $CopyWithPlaceholder(),
    Object? similarQuery = const $CopyWithPlaceholder(),
    Object? sumOrFiltersScores = const $CopyWithPlaceholder(),
    Object? facetingAfterDistinct = const $CopyWithPlaceholder(),
    Object? sortFacetValuesBy = const $CopyWithPlaceholder(),
    Object? length = const $CopyWithPlaceholder(),
    Object? aroundLatLng = const $CopyWithPlaceholder(),
    Object? aroundLatLngViaIP = const $CopyWithPlaceholder(),
    Object? aroundRadius = const $CopyWithPlaceholder(),
    Object? aroundPrecision = const $CopyWithPlaceholder(),
    Object? minimumAroundRadius = const $CopyWithPlaceholder(),
    Object? insideBoundingBox = const $CopyWithPlaceholder(),
    Object? insidePolygon = const $CopyWithPlaceholder(),
    Object? naturalLanguages = const $CopyWithPlaceholder(),
    Object? personalizationImpact = const $CopyWithPlaceholder(),
    Object? getRankingInfo = const $CopyWithPlaceholder(),
    Object? clickAnalytics = const $CopyWithPlaceholder(),
    Object? analyticsTags = const $CopyWithPlaceholder(),
    Object? percentileComputation = const $CopyWithPlaceholder(),
    Object? enableABTest = const $CopyWithPlaceholder(),
    Object? enableReRanking = const $CopyWithPlaceholder(),
    Object? reRankingApplyFilter = const $CopyWithPlaceholder(),
    Object? extra = const $CopyWithPlaceholder(),
  }) {
    return SearchParams(
      query: query == const $CopyWithPlaceholder()
          ? _value.query
          // ignore: cast_nullable_to_non_nullable
          : query as String?,
      page: page == const $CopyWithPlaceholder()
          ? _value.page
          // ignore: cast_nullable_to_non_nullable
          : page as int?,
      hitsPerPage: hitsPerPage == const $CopyWithPlaceholder()
          ? _value.hitsPerPage
          // ignore: cast_nullable_to_non_nullable
          : hitsPerPage as int?,
      facets: facets == const $CopyWithPlaceholder()
          ? _value.facets
          // ignore: cast_nullable_to_non_nullable
          : facets as Iterable<String>?,
      disjunctiveFacets: disjunctiveFacets == const $CopyWithPlaceholder()
          ? _value.disjunctiveFacets
          // ignore: cast_nullable_to_non_nullable
          : disjunctiveFacets as Set<String>?,
      filters: filters == const $CopyWithPlaceholder()
          ? _value.filters
          // ignore: cast_nullable_to_non_nullable
          : filters as String?,
      ruleContexts: ruleContexts == const $CopyWithPlaceholder()
          ? _value.ruleContexts
          // ignore: cast_nullable_to_non_nullable
          : ruleContexts as Iterable<String>?,
      facetFilters: facetFilters == const $CopyWithPlaceholder()
          ? _value.facetFilters
          // ignore: cast_nullable_to_non_nullable
          : facetFilters as Iterable<String>?,
      attributesToHighlight:
          attributesToHighlight == const $CopyWithPlaceholder()
              ? _value.attributesToHighlight
              // ignore: cast_nullable_to_non_nullable
              : attributesToHighlight as Iterable<String>?,
      attributesToRetrieve: attributesToRetrieve == const $CopyWithPlaceholder()
          ? _value.attributesToRetrieve
          // ignore: cast_nullable_to_non_nullable
          : attributesToRetrieve as Iterable<String>?,
      attributesToSnippet: attributesToSnippet == const $CopyWithPlaceholder()
          ? _value.attributesToSnippet
          // ignore: cast_nullable_to_non_nullable
          : attributesToSnippet as Iterable<String>?,
      highlightPostTag: highlightPostTag == const $CopyWithPlaceholder()
          ? _value.highlightPostTag
          // ignore: cast_nullable_to_non_nullable
          : highlightPostTag as String?,
      highlightPreTag: highlightPreTag == const $CopyWithPlaceholder()
          ? _value.highlightPreTag
          // ignore: cast_nullable_to_non_nullable
          : highlightPreTag as String?,
      maxFacetHits: maxFacetHits == const $CopyWithPlaceholder()
          ? _value.maxFacetHits
          // ignore: cast_nullable_to_non_nullable
          : maxFacetHits as int?,
      maxValuesPerFacet: maxValuesPerFacet == const $CopyWithPlaceholder()
          ? _value.maxValuesPerFacet
          // ignore: cast_nullable_to_non_nullable
          : maxValuesPerFacet as int?,
      numericFilters: numericFilters == const $CopyWithPlaceholder()
          ? _value.numericFilters
          // ignore: cast_nullable_to_non_nullable
          : numericFilters as Iterable<String>?,
      optionalFilters: optionalFilters == const $CopyWithPlaceholder()
          ? _value.optionalFilters
          // ignore: cast_nullable_to_non_nullable
          : optionalFilters as Iterable<String>?,
      sumOrFiltersScore: sumOrFiltersScore == const $CopyWithPlaceholder()
          ? _value.sumOrFiltersScore
          // ignore: cast_nullable_to_non_nullable
          : sumOrFiltersScore as bool?,
      tagFilters: tagFilters == const $CopyWithPlaceholder()
          ? _value.tagFilters
          // ignore: cast_nullable_to_non_nullable
          : tagFilters as Iterable<String>?,
      userToken: userToken == const $CopyWithPlaceholder()
          ? _value.userToken
          // ignore: cast_nullable_to_non_nullable
          : userToken as String?,
      analytics: analytics == const $CopyWithPlaceholder()
          ? _value.analytics
          // ignore: cast_nullable_to_non_nullable
          : analytics as bool?,
      similarQuery: similarQuery == const $CopyWithPlaceholder()
          ? _value.similarQuery
          // ignore: cast_nullable_to_non_nullable
          : similarQuery as String?,
      sumOrFiltersScores: sumOrFiltersScores == const $CopyWithPlaceholder()
          ? _value.sumOrFiltersScores
          // ignore: cast_nullable_to_non_nullable
          : sumOrFiltersScores as bool?,
      facetingAfterDistinct:
          facetingAfterDistinct == const $CopyWithPlaceholder()
              ? _value.facetingAfterDistinct
              // ignore: cast_nullable_to_non_nullable
              : facetingAfterDistinct as bool?,
      sortFacetValuesBy: sortFacetValuesBy == const $CopyWithPlaceholder()
          ? _value.sortFacetValuesBy
          // ignore: cast_nullable_to_non_nullable
          : sortFacetValuesBy as String?,
      length: length == const $CopyWithPlaceholder()
          ? _value.length
          // ignore: cast_nullable_to_non_nullable
          : length as int?,
      aroundLatLng: aroundLatLng == const $CopyWithPlaceholder()
          ? _value.aroundLatLng
          // ignore: cast_nullable_to_non_nullable
          : aroundLatLng as String?,
      aroundLatLngViaIP: aroundLatLngViaIP == const $CopyWithPlaceholder()
          ? _value.aroundLatLngViaIP
          // ignore: cast_nullable_to_non_nullable
          : aroundLatLngViaIP as bool?,
      aroundRadius: aroundRadius == const $CopyWithPlaceholder()
          ? _value.aroundRadius
          // ignore: cast_nullable_to_non_nullable
          : aroundRadius as String?,
      aroundPrecision: aroundPrecision == const $CopyWithPlaceholder()
          ? _value.aroundPrecision
          // ignore: cast_nullable_to_non_nullable
          : aroundPrecision as int?,
      minimumAroundRadius: minimumAroundRadius == const $CopyWithPlaceholder()
          ? _value.minimumAroundRadius
          // ignore: cast_nullable_to_non_nullable
          : minimumAroundRadius as int?,
      insideBoundingBox: insideBoundingBox == const $CopyWithPlaceholder()
          ? _value.insideBoundingBox
          // ignore: cast_nullable_to_non_nullable
          : insideBoundingBox as Iterable<int>?,
      insidePolygon: insidePolygon == const $CopyWithPlaceholder()
          ? _value.insidePolygon
          // ignore: cast_nullable_to_non_nullable
          : insidePolygon as Iterable<int>?,
      naturalLanguages: naturalLanguages == const $CopyWithPlaceholder()
          ? _value.naturalLanguages
          // ignore: cast_nullable_to_non_nullable
          : naturalLanguages as Iterable<String>?,
      personalizationImpact:
          personalizationImpact == const $CopyWithPlaceholder()
              ? _value.personalizationImpact
              // ignore: cast_nullable_to_non_nullable
              : personalizationImpact as int?,
      getRankingInfo: getRankingInfo == const $CopyWithPlaceholder()
          ? _value.getRankingInfo
          // ignore: cast_nullable_to_non_nullable
          : getRankingInfo as bool?,
      clickAnalytics: clickAnalytics == const $CopyWithPlaceholder()
          ? _value.clickAnalytics
          // ignore: cast_nullable_to_non_nullable
          : clickAnalytics as bool?,
      analyticsTags: analyticsTags == const $CopyWithPlaceholder()
          ? _value.analyticsTags
          // ignore: cast_nullable_to_non_nullable
          : analyticsTags as Iterable<String>?,
      percentileComputation:
          percentileComputation == const $CopyWithPlaceholder()
              ? _value.percentileComputation
              // ignore: cast_nullable_to_non_nullable
              : percentileComputation as bool?,
      enableABTest: enableABTest == const $CopyWithPlaceholder()
          ? _value.enableABTest
          // ignore: cast_nullable_to_non_nullable
          : enableABTest as bool?,
      enableReRanking: enableReRanking == const $CopyWithPlaceholder()
          ? _value.enableReRanking
          // ignore: cast_nullable_to_non_nullable
          : enableReRanking as bool?,
      reRankingApplyFilter: reRankingApplyFilter == const $CopyWithPlaceholder()
          ? _value.reRankingApplyFilter
          // ignore: cast_nullable_to_non_nullable
          : reRankingApplyFilter as String?,
      extra: extra == const $CopyWithPlaceholder() || extra == null
          // ignore: unnecessary_non_null_assertion
          ? _value.extra!
          // ignore: cast_nullable_to_non_nullable
          : extra as Map<String, dynamic>,
    );
  }
}

extension $SearchParamsCopyWith on SearchParams {
  /// Returns a callable class that can be used as follows: `instanceOfSearchParams.copyWith(...)`.
  // ignore: library_private_types_in_public_api
  _$SearchParamsCWProxy get copyWith => _$SearchParamsCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$SearchParamsToJson(SearchParams instance) {
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
