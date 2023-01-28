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
    List<String>? facets,
    Set<String>? disjunctiveFacets,
    String? filters,
    List<String>? ruleContexts,
    List<String>? facetFilters,
    List<String>? attributesToHighlight,
    List<String>? attributesToRetrieve,
    List<String>? attributesToSnippet,
    String? highlightPostTag,
    String? highlightPreTag,
    int? maxFacetHits,
    int? maxValuesPerFacet,
    List<String>? numericFilters,
    List<String>? optionalFilters,
    bool? sumOrFiltersScore,
    List<String>? tagFilters,
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
    List<int>? insideBoundingBox,
    List<int>? insidePolygon,
    List<String>? naturalLanguages,
    int? personalizationImpact,
    bool? getRankingInfo,
    bool? clickAnalytics,
    List<String>? analyticsTags,
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
          : facets as List<String>?,
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
          : ruleContexts as List<String>?,
      facetFilters: facetFilters == const $CopyWithPlaceholder()
          ? _value.facetFilters
          // ignore: cast_nullable_to_non_nullable
          : facetFilters as List<String>?,
      attributesToHighlight:
          attributesToHighlight == const $CopyWithPlaceholder()
              ? _value.attributesToHighlight
              // ignore: cast_nullable_to_non_nullable
              : attributesToHighlight as List<String>?,
      attributesToRetrieve: attributesToRetrieve == const $CopyWithPlaceholder()
          ? _value.attributesToRetrieve
          // ignore: cast_nullable_to_non_nullable
          : attributesToRetrieve as List<String>?,
      attributesToSnippet: attributesToSnippet == const $CopyWithPlaceholder()
          ? _value.attributesToSnippet
          // ignore: cast_nullable_to_non_nullable
          : attributesToSnippet as List<String>?,
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
          : numericFilters as List<String>?,
      optionalFilters: optionalFilters == const $CopyWithPlaceholder()
          ? _value.optionalFilters
          // ignore: cast_nullable_to_non_nullable
          : optionalFilters as List<String>?,
      sumOrFiltersScore: sumOrFiltersScore == const $CopyWithPlaceholder()
          ? _value.sumOrFiltersScore
          // ignore: cast_nullable_to_non_nullable
          : sumOrFiltersScore as bool?,
      tagFilters: tagFilters == const $CopyWithPlaceholder()
          ? _value.tagFilters
          // ignore: cast_nullable_to_non_nullable
          : tagFilters as List<String>?,
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
          : insideBoundingBox as List<int>?,
      insidePolygon: insidePolygon == const $CopyWithPlaceholder()
          ? _value.insidePolygon
          // ignore: cast_nullable_to_non_nullable
          : insidePolygon as List<int>?,
      naturalLanguages: naturalLanguages == const $CopyWithPlaceholder()
          ? _value.naturalLanguages
          // ignore: cast_nullable_to_non_nullable
          : naturalLanguages as List<String>?,
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
          : analyticsTags as List<String>?,
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

SearchParams _$SearchParamsFromJson(Map<String, dynamic> json) => SearchParams(
      query: json['query'] as String?,
      page: json['page'] as int?,
      hitsPerPage: json['hitsPerPage'] as int?,
      facets:
          (json['facets'] as List<dynamic>?)?.map((e) => e as String).toList(),
      disjunctiveFacets: (json['disjunctiveFacets'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toSet(),
      filters: json['filters'] as String?,
      ruleContexts: (json['ruleContexts'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      facetFilters: (json['facetFilters'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      attributesToHighlight: (json['attributesToHighlight'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      attributesToRetrieve: (json['attributesToRetrieve'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      attributesToSnippet: (json['attributesToSnippet'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      highlightPostTag: json['highlightPostTag'] as String?,
      highlightPreTag: json['highlightPreTag'] as String?,
      maxFacetHits: json['maxFacetHits'] as int?,
      maxValuesPerFacet: json['maxValuesPerFacet'] as int?,
      numericFilters: (json['numericFilters'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      optionalFilters: (json['optionalFilters'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      sumOrFiltersScore: json['sumOrFiltersScore'] as bool?,
      tagFilters: (json['tagFilters'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      userToken: json['userToken'] as String?,
      analytics: json['analytics'] as bool?,
      similarQuery: json['similarQuery'] as String?,
      sumOrFiltersScores: json['sumOrFiltersScores'] as bool?,
      facetingAfterDistinct: json['facetingAfterDistinct'] as bool?,
      sortFacetValuesBy: json['sortFacetValuesBy'] as String?,
      length: json['length'] as int?,
      aroundLatLng: json['aroundLatLng'] as String?,
      aroundLatLngViaIP: json['aroundLatLngViaIP'] as bool?,
      aroundRadius: json['aroundRadius'] as String?,
      aroundPrecision: json['aroundPrecision'] as int?,
      minimumAroundRadius: json['minimumAroundRadius'] as int?,
      insideBoundingBox: (json['insideBoundingBox'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      insidePolygon: (json['insidePolygon'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      naturalLanguages: (json['naturalLanguages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      personalizationImpact: json['personalizationImpact'] as int?,
      getRankingInfo: json['getRankingInfo'] as bool?,
      clickAnalytics: json['clickAnalytics'] as bool?,
      analyticsTags: (json['analyticsTags'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      percentileComputation: json['percentileComputation'] as bool?,
      enableABTest: json['enableABTest'] as bool?,
      enableReRanking: json['enableReRanking'] as bool?,
      reRankingApplyFilter: json['reRankingApplyFilter'] as String?,
    );

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
  writeNotNull('facets', instance.facets);
  writeNotNull('disjunctiveFacets', instance.disjunctiveFacets?.toList());
  writeNotNull('filters', instance.filters);
  writeNotNull('ruleContexts', instance.ruleContexts);
  writeNotNull('facetFilters', instance.facetFilters);
  writeNotNull('attributesToHighlight', instance.attributesToHighlight);
  writeNotNull('attributesToRetrieve', instance.attributesToRetrieve);
  writeNotNull('attributesToSnippet', instance.attributesToSnippet);
  writeNotNull('highlightPostTag', instance.highlightPostTag);
  writeNotNull('highlightPreTag', instance.highlightPreTag);
  writeNotNull('maxFacetHits', instance.maxFacetHits);
  writeNotNull('maxValuesPerFacet', instance.maxValuesPerFacet);
  writeNotNull('numericFilters', instance.numericFilters);
  writeNotNull('optionalFilters', instance.optionalFilters);
  writeNotNull('sumOrFiltersScore', instance.sumOrFiltersScore);
  writeNotNull('tagFilters', instance.tagFilters);
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
  writeNotNull('insideBoundingBox', instance.insideBoundingBox);
  writeNotNull('insidePolygon', instance.insidePolygon);
  writeNotNull('naturalLanguages', instance.naturalLanguages);
  writeNotNull('personalizationImpact', instance.personalizationImpact);
  writeNotNull('getRankingInfo', instance.getRankingInfo);
  writeNotNull('clickAnalytics', instance.clickAnalytics);
  writeNotNull('analyticsTags', instance.analyticsTags);
  writeNotNull('percentileComputation', instance.percentileComputation);
  writeNotNull('enableABTest', instance.enableABTest);
  writeNotNull('enableReRanking', instance.enableReRanking);
  writeNotNull('reRankingApplyFilter', instance.reRankingApplyFilter);
  return val;
}
