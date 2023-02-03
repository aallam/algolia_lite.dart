// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchParams {
  /// Search query string
  String? get query => throw _privateConstructorUsedError;

  /// Search page number
  int? get page => throw _privateConstructorUsedError;

  /// Number of hits per page
  int? get hitsPerPage => throw _privateConstructorUsedError;

  /// Search facets list
  Iterable<String>? get facets => throw _privateConstructorUsedError;

  /// Disjunctive facets list
  Set<String>? get disjunctiveFacets => throw _privateConstructorUsedError;

  /// Set of filter groups
  String? get filters => throw _privateConstructorUsedError;

  /// Search rule contexts
  Iterable<String>? get ruleContexts => throw _privateConstructorUsedError;

  /// Filter hits by facet value.
  Iterable<String>? get facetFilters => throw _privateConstructorUsedError;

  /// List of attributes to highlight.
  Iterable<String>? get attributesToHighlight =>
      throw _privateConstructorUsedError;

  /// Gives control over which attributes to retrieve and which not to retrieve.
  Iterable<String>? get attributesToRetrieve =>
      throw _privateConstructorUsedError;

  /// List of attributes to snippet,
  /// with an optional maximum number of words
  /// to snippet.
  Iterable<String>? get attributesToSnippet =>
      throw _privateConstructorUsedError;

  /// The HTML name to insert after the highlighted parts in all highlight
  /// and snippet results.
  String? get highlightPostTag => throw _privateConstructorUsedError;

  /// The HTML name to insert before the highlighted parts in all highlight
  /// and snippet results.
  String? get highlightPreTag => throw _privateConstructorUsedError;

  /// Maximum number of facet hits to return during a search for facet values.
  int? get maxFacetHits => throw _privateConstructorUsedError;

  /// Maximum number of facet values to return for each facet during a regular
  /// search.
  int? get maxValuesPerFacet => throw _privateConstructorUsedError;

  /// Filter on numeric attributes.
  Iterable<String>? get numericFilters => throw _privateConstructorUsedError;

  /// Create filters for ranking purposes,
  /// where records that match the filter
  /// are ranked highest.
  Iterable<String>? get optionalFilters => throw _privateConstructorUsedError;

  /// Determines how to calculate the total score for filtering.
  bool? get sumOrFiltersScore => throw _privateConstructorUsedError;

  /// Filter hits by tags.
  Iterable<String>? get tagFilters => throw _privateConstructorUsedError;

  /// Associates a certain user token with the current search.
  String? get userToken => throw _privateConstructorUsedError;

  /// Whether the current query will be taken into account in the Analytics.
  bool? get analytics => throw _privateConstructorUsedError;

  /// Overrides the query parameter and performs a more generic search that can
  /// be used to find "similar" results.
  String? get similarQuery => throw _privateConstructorUsedError;

  /// Determines how to calculate the total score for filtering.
  bool? get sumOrFiltersScores => throw _privateConstructorUsedError;

  /// Force faceting to be applied after de-duplication
  /// (via the Distinct setting).
  bool? get facetingAfterDistinct => throw _privateConstructorUsedError;

  /// Controls how facet values are fetched.
  String? get sortFacetValuesBy => throw _privateConstructorUsedError;

  /// Set the number of hits to retrieve (used only with offset).
  int? get length => throw _privateConstructorUsedError;

  /// Search for entries around a central geolocation, enabling a geo search
  /// within a circular area
  String? get aroundLatLng => throw _privateConstructorUsedError;

  /// Search for entries around a given location automatically computed from
  /// the requester's IP address
  bool? get aroundLatLngViaIP => throw _privateConstructorUsedError;

  /// Define the maximum radius for a geo search (in meters).
  String? get aroundRadius => throw _privateConstructorUsedError;

  /// Precision of geo search (in meters), to add grouping by geo location
  /// to the ranking formula.
  int? get aroundPrecision => throw _privateConstructorUsedError;

  /// Minimum radius (in meters) used for a geo search when aroundRadius
  /// is not set.
  int? get minimumAroundRadius => throw _privateConstructorUsedError;

  /// Search inside a rectangular area (in geo coordinates).
  Iterable<int>? get insideBoundingBox => throw _privateConstructorUsedError;

  /// Search inside a polygon (in geo coordinates).
  Iterable<int>? get insidePolygon => throw _privateConstructorUsedError;

  /// This parameter changes the default values of certain parameters and
  /// settings that work best for a natural language query, such as
  /// ignorePlurals, removeStopWords, removeWordsIfNoResults,
  /// analyticsTags and ruleContexts. These parameters and settings work
  /// well together when the query is formatted in natural language
  /// instead of keywords, for example when your user performs a voice
  /// search.
  Iterable<String>? get naturalLanguages => throw _privateConstructorUsedError;

  /// Define the impact of the Personalization feature.
  int? get personalizationImpact => throw _privateConstructorUsedError;

  /// Retrieve detailed ranking information.
  bool? get getRankingInfo => throw _privateConstructorUsedError;

  /// Enable the Click Analytics feature.
  bool? get clickAnalytics => throw _privateConstructorUsedError;

  /// List of tags to apply to the query for analytics purposes.
  Iterable<String>? get analyticsTags => throw _privateConstructorUsedError;

  /// Whether to include or exclude a query from the processing-time percentile
  /// computation.
  bool? get percentileComputation => throw _privateConstructorUsedError;

  /// Whether this search should participate in running AB tests.
  bool? get enableABTest => throw _privateConstructorUsedError;

  /// Whether this search should use AI Re-Ranking.
  bool? get enableReRanking => throw _privateConstructorUsedError;

  /// When Dynamic Re-Ranking is enabled, only records that match these filters
  /// will be impacted by Dynamic Re-Ranking.
  String? get reRankingApplyFilter => throw _privateConstructorUsedError;

  /// Extra custom parameters
// ignore: invalid_annotation_target
  @ignore
  Map<String, dynamic>? get extra => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchParamsCopyWith<SearchParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchParamsCopyWith<$Res> {
  factory $SearchParamsCopyWith(
          SearchParams value, $Res Function(SearchParams) then) =
      _$SearchParamsCopyWithImpl<$Res, SearchParams>;
  @useResult
  $Res call(
      {String? query,
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
      @ignore Map<String, dynamic>? extra});
}

/// @nodoc
class _$SearchParamsCopyWithImpl<$Res, $Val extends SearchParams>
    implements $SearchParamsCopyWith<$Res> {
  _$SearchParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
    Object? page = freezed,
    Object? hitsPerPage = freezed,
    Object? facets = freezed,
    Object? disjunctiveFacets = freezed,
    Object? filters = freezed,
    Object? ruleContexts = freezed,
    Object? facetFilters = freezed,
    Object? attributesToHighlight = freezed,
    Object? attributesToRetrieve = freezed,
    Object? attributesToSnippet = freezed,
    Object? highlightPostTag = freezed,
    Object? highlightPreTag = freezed,
    Object? maxFacetHits = freezed,
    Object? maxValuesPerFacet = freezed,
    Object? numericFilters = freezed,
    Object? optionalFilters = freezed,
    Object? sumOrFiltersScore = freezed,
    Object? tagFilters = freezed,
    Object? userToken = freezed,
    Object? analytics = freezed,
    Object? similarQuery = freezed,
    Object? sumOrFiltersScores = freezed,
    Object? facetingAfterDistinct = freezed,
    Object? sortFacetValuesBy = freezed,
    Object? length = freezed,
    Object? aroundLatLng = freezed,
    Object? aroundLatLngViaIP = freezed,
    Object? aroundRadius = freezed,
    Object? aroundPrecision = freezed,
    Object? minimumAroundRadius = freezed,
    Object? insideBoundingBox = freezed,
    Object? insidePolygon = freezed,
    Object? naturalLanguages = freezed,
    Object? personalizationImpact = freezed,
    Object? getRankingInfo = freezed,
    Object? clickAnalytics = freezed,
    Object? analyticsTags = freezed,
    Object? percentileComputation = freezed,
    Object? enableABTest = freezed,
    Object? enableReRanking = freezed,
    Object? reRankingApplyFilter = freezed,
    Object? extra = freezed,
  }) {
    return _then(_value.copyWith(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      hitsPerPage: freezed == hitsPerPage
          ? _value.hitsPerPage
          : hitsPerPage // ignore: cast_nullable_to_non_nullable
              as int?,
      facets: freezed == facets
          ? _value.facets
          : facets // ignore: cast_nullable_to_non_nullable
              as Iterable<String>?,
      disjunctiveFacets: freezed == disjunctiveFacets
          ? _value.disjunctiveFacets
          : disjunctiveFacets // ignore: cast_nullable_to_non_nullable
              as Set<String>?,
      filters: freezed == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as String?,
      ruleContexts: freezed == ruleContexts
          ? _value.ruleContexts
          : ruleContexts // ignore: cast_nullable_to_non_nullable
              as Iterable<String>?,
      facetFilters: freezed == facetFilters
          ? _value.facetFilters
          : facetFilters // ignore: cast_nullable_to_non_nullable
              as Iterable<String>?,
      attributesToHighlight: freezed == attributesToHighlight
          ? _value.attributesToHighlight
          : attributesToHighlight // ignore: cast_nullable_to_non_nullable
              as Iterable<String>?,
      attributesToRetrieve: freezed == attributesToRetrieve
          ? _value.attributesToRetrieve
          : attributesToRetrieve // ignore: cast_nullable_to_non_nullable
              as Iterable<String>?,
      attributesToSnippet: freezed == attributesToSnippet
          ? _value.attributesToSnippet
          : attributesToSnippet // ignore: cast_nullable_to_non_nullable
              as Iterable<String>?,
      highlightPostTag: freezed == highlightPostTag
          ? _value.highlightPostTag
          : highlightPostTag // ignore: cast_nullable_to_non_nullable
              as String?,
      highlightPreTag: freezed == highlightPreTag
          ? _value.highlightPreTag
          : highlightPreTag // ignore: cast_nullable_to_non_nullable
              as String?,
      maxFacetHits: freezed == maxFacetHits
          ? _value.maxFacetHits
          : maxFacetHits // ignore: cast_nullable_to_non_nullable
              as int?,
      maxValuesPerFacet: freezed == maxValuesPerFacet
          ? _value.maxValuesPerFacet
          : maxValuesPerFacet // ignore: cast_nullable_to_non_nullable
              as int?,
      numericFilters: freezed == numericFilters
          ? _value.numericFilters
          : numericFilters // ignore: cast_nullable_to_non_nullable
              as Iterable<String>?,
      optionalFilters: freezed == optionalFilters
          ? _value.optionalFilters
          : optionalFilters // ignore: cast_nullable_to_non_nullable
              as Iterable<String>?,
      sumOrFiltersScore: freezed == sumOrFiltersScore
          ? _value.sumOrFiltersScore
          : sumOrFiltersScore // ignore: cast_nullable_to_non_nullable
              as bool?,
      tagFilters: freezed == tagFilters
          ? _value.tagFilters
          : tagFilters // ignore: cast_nullable_to_non_nullable
              as Iterable<String>?,
      userToken: freezed == userToken
          ? _value.userToken
          : userToken // ignore: cast_nullable_to_non_nullable
              as String?,
      analytics: freezed == analytics
          ? _value.analytics
          : analytics // ignore: cast_nullable_to_non_nullable
              as bool?,
      similarQuery: freezed == similarQuery
          ? _value.similarQuery
          : similarQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      sumOrFiltersScores: freezed == sumOrFiltersScores
          ? _value.sumOrFiltersScores
          : sumOrFiltersScores // ignore: cast_nullable_to_non_nullable
              as bool?,
      facetingAfterDistinct: freezed == facetingAfterDistinct
          ? _value.facetingAfterDistinct
          : facetingAfterDistinct // ignore: cast_nullable_to_non_nullable
              as bool?,
      sortFacetValuesBy: freezed == sortFacetValuesBy
          ? _value.sortFacetValuesBy
          : sortFacetValuesBy // ignore: cast_nullable_to_non_nullable
              as String?,
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
      aroundLatLng: freezed == aroundLatLng
          ? _value.aroundLatLng
          : aroundLatLng // ignore: cast_nullable_to_non_nullable
              as String?,
      aroundLatLngViaIP: freezed == aroundLatLngViaIP
          ? _value.aroundLatLngViaIP
          : aroundLatLngViaIP // ignore: cast_nullable_to_non_nullable
              as bool?,
      aroundRadius: freezed == aroundRadius
          ? _value.aroundRadius
          : aroundRadius // ignore: cast_nullable_to_non_nullable
              as String?,
      aroundPrecision: freezed == aroundPrecision
          ? _value.aroundPrecision
          : aroundPrecision // ignore: cast_nullable_to_non_nullable
              as int?,
      minimumAroundRadius: freezed == minimumAroundRadius
          ? _value.minimumAroundRadius
          : minimumAroundRadius // ignore: cast_nullable_to_non_nullable
              as int?,
      insideBoundingBox: freezed == insideBoundingBox
          ? _value.insideBoundingBox
          : insideBoundingBox // ignore: cast_nullable_to_non_nullable
              as Iterable<int>?,
      insidePolygon: freezed == insidePolygon
          ? _value.insidePolygon
          : insidePolygon // ignore: cast_nullable_to_non_nullable
              as Iterable<int>?,
      naturalLanguages: freezed == naturalLanguages
          ? _value.naturalLanguages
          : naturalLanguages // ignore: cast_nullable_to_non_nullable
              as Iterable<String>?,
      personalizationImpact: freezed == personalizationImpact
          ? _value.personalizationImpact
          : personalizationImpact // ignore: cast_nullable_to_non_nullable
              as int?,
      getRankingInfo: freezed == getRankingInfo
          ? _value.getRankingInfo
          : getRankingInfo // ignore: cast_nullable_to_non_nullable
              as bool?,
      clickAnalytics: freezed == clickAnalytics
          ? _value.clickAnalytics
          : clickAnalytics // ignore: cast_nullable_to_non_nullable
              as bool?,
      analyticsTags: freezed == analyticsTags
          ? _value.analyticsTags
          : analyticsTags // ignore: cast_nullable_to_non_nullable
              as Iterable<String>?,
      percentileComputation: freezed == percentileComputation
          ? _value.percentileComputation
          : percentileComputation // ignore: cast_nullable_to_non_nullable
              as bool?,
      enableABTest: freezed == enableABTest
          ? _value.enableABTest
          : enableABTest // ignore: cast_nullable_to_non_nullable
              as bool?,
      enableReRanking: freezed == enableReRanking
          ? _value.enableReRanking
          : enableReRanking // ignore: cast_nullable_to_non_nullable
              as bool?,
      reRankingApplyFilter: freezed == reRankingApplyFilter
          ? _value.reRankingApplyFilter
          : reRankingApplyFilter // ignore: cast_nullable_to_non_nullable
              as String?,
      extra: freezed == extra
          ? _value.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchParamsCopyWith<$Res>
    implements $SearchParamsCopyWith<$Res> {
  factory _$$_SearchParamsCopyWith(
          _$_SearchParams value, $Res Function(_$_SearchParams) then) =
      __$$_SearchParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? query,
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
      @ignore Map<String, dynamic>? extra});
}

/// @nodoc
class __$$_SearchParamsCopyWithImpl<$Res>
    extends _$SearchParamsCopyWithImpl<$Res, _$_SearchParams>
    implements _$$_SearchParamsCopyWith<$Res> {
  __$$_SearchParamsCopyWithImpl(
      _$_SearchParams _value, $Res Function(_$_SearchParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
    Object? page = freezed,
    Object? hitsPerPage = freezed,
    Object? facets = freezed,
    Object? disjunctiveFacets = freezed,
    Object? filters = freezed,
    Object? ruleContexts = freezed,
    Object? facetFilters = freezed,
    Object? attributesToHighlight = freezed,
    Object? attributesToRetrieve = freezed,
    Object? attributesToSnippet = freezed,
    Object? highlightPostTag = freezed,
    Object? highlightPreTag = freezed,
    Object? maxFacetHits = freezed,
    Object? maxValuesPerFacet = freezed,
    Object? numericFilters = freezed,
    Object? optionalFilters = freezed,
    Object? sumOrFiltersScore = freezed,
    Object? tagFilters = freezed,
    Object? userToken = freezed,
    Object? analytics = freezed,
    Object? similarQuery = freezed,
    Object? sumOrFiltersScores = freezed,
    Object? facetingAfterDistinct = freezed,
    Object? sortFacetValuesBy = freezed,
    Object? length = freezed,
    Object? aroundLatLng = freezed,
    Object? aroundLatLngViaIP = freezed,
    Object? aroundRadius = freezed,
    Object? aroundPrecision = freezed,
    Object? minimumAroundRadius = freezed,
    Object? insideBoundingBox = freezed,
    Object? insidePolygon = freezed,
    Object? naturalLanguages = freezed,
    Object? personalizationImpact = freezed,
    Object? getRankingInfo = freezed,
    Object? clickAnalytics = freezed,
    Object? analyticsTags = freezed,
    Object? percentileComputation = freezed,
    Object? enableABTest = freezed,
    Object? enableReRanking = freezed,
    Object? reRankingApplyFilter = freezed,
    Object? extra = freezed,
  }) {
    return _then(_$_SearchParams(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      hitsPerPage: freezed == hitsPerPage
          ? _value.hitsPerPage
          : hitsPerPage // ignore: cast_nullable_to_non_nullable
              as int?,
      facets: freezed == facets
          ? _value.facets
          : facets // ignore: cast_nullable_to_non_nullable
              as Iterable<String>?,
      disjunctiveFacets: freezed == disjunctiveFacets
          ? _value._disjunctiveFacets
          : disjunctiveFacets // ignore: cast_nullable_to_non_nullable
              as Set<String>?,
      filters: freezed == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as String?,
      ruleContexts: freezed == ruleContexts
          ? _value.ruleContexts
          : ruleContexts // ignore: cast_nullable_to_non_nullable
              as Iterable<String>?,
      facetFilters: freezed == facetFilters
          ? _value.facetFilters
          : facetFilters // ignore: cast_nullable_to_non_nullable
              as Iterable<String>?,
      attributesToHighlight: freezed == attributesToHighlight
          ? _value.attributesToHighlight
          : attributesToHighlight // ignore: cast_nullable_to_non_nullable
              as Iterable<String>?,
      attributesToRetrieve: freezed == attributesToRetrieve
          ? _value.attributesToRetrieve
          : attributesToRetrieve // ignore: cast_nullable_to_non_nullable
              as Iterable<String>?,
      attributesToSnippet: freezed == attributesToSnippet
          ? _value.attributesToSnippet
          : attributesToSnippet // ignore: cast_nullable_to_non_nullable
              as Iterable<String>?,
      highlightPostTag: freezed == highlightPostTag
          ? _value.highlightPostTag
          : highlightPostTag // ignore: cast_nullable_to_non_nullable
              as String?,
      highlightPreTag: freezed == highlightPreTag
          ? _value.highlightPreTag
          : highlightPreTag // ignore: cast_nullable_to_non_nullable
              as String?,
      maxFacetHits: freezed == maxFacetHits
          ? _value.maxFacetHits
          : maxFacetHits // ignore: cast_nullable_to_non_nullable
              as int?,
      maxValuesPerFacet: freezed == maxValuesPerFacet
          ? _value.maxValuesPerFacet
          : maxValuesPerFacet // ignore: cast_nullable_to_non_nullable
              as int?,
      numericFilters: freezed == numericFilters
          ? _value.numericFilters
          : numericFilters // ignore: cast_nullable_to_non_nullable
              as Iterable<String>?,
      optionalFilters: freezed == optionalFilters
          ? _value.optionalFilters
          : optionalFilters // ignore: cast_nullable_to_non_nullable
              as Iterable<String>?,
      sumOrFiltersScore: freezed == sumOrFiltersScore
          ? _value.sumOrFiltersScore
          : sumOrFiltersScore // ignore: cast_nullable_to_non_nullable
              as bool?,
      tagFilters: freezed == tagFilters
          ? _value.tagFilters
          : tagFilters // ignore: cast_nullable_to_non_nullable
              as Iterable<String>?,
      userToken: freezed == userToken
          ? _value.userToken
          : userToken // ignore: cast_nullable_to_non_nullable
              as String?,
      analytics: freezed == analytics
          ? _value.analytics
          : analytics // ignore: cast_nullable_to_non_nullable
              as bool?,
      similarQuery: freezed == similarQuery
          ? _value.similarQuery
          : similarQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      sumOrFiltersScores: freezed == sumOrFiltersScores
          ? _value.sumOrFiltersScores
          : sumOrFiltersScores // ignore: cast_nullable_to_non_nullable
              as bool?,
      facetingAfterDistinct: freezed == facetingAfterDistinct
          ? _value.facetingAfterDistinct
          : facetingAfterDistinct // ignore: cast_nullable_to_non_nullable
              as bool?,
      sortFacetValuesBy: freezed == sortFacetValuesBy
          ? _value.sortFacetValuesBy
          : sortFacetValuesBy // ignore: cast_nullable_to_non_nullable
              as String?,
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
      aroundLatLng: freezed == aroundLatLng
          ? _value.aroundLatLng
          : aroundLatLng // ignore: cast_nullable_to_non_nullable
              as String?,
      aroundLatLngViaIP: freezed == aroundLatLngViaIP
          ? _value.aroundLatLngViaIP
          : aroundLatLngViaIP // ignore: cast_nullable_to_non_nullable
              as bool?,
      aroundRadius: freezed == aroundRadius
          ? _value.aroundRadius
          : aroundRadius // ignore: cast_nullable_to_non_nullable
              as String?,
      aroundPrecision: freezed == aroundPrecision
          ? _value.aroundPrecision
          : aroundPrecision // ignore: cast_nullable_to_non_nullable
              as int?,
      minimumAroundRadius: freezed == minimumAroundRadius
          ? _value.minimumAroundRadius
          : minimumAroundRadius // ignore: cast_nullable_to_non_nullable
              as int?,
      insideBoundingBox: freezed == insideBoundingBox
          ? _value.insideBoundingBox
          : insideBoundingBox // ignore: cast_nullable_to_non_nullable
              as Iterable<int>?,
      insidePolygon: freezed == insidePolygon
          ? _value.insidePolygon
          : insidePolygon // ignore: cast_nullable_to_non_nullable
              as Iterable<int>?,
      naturalLanguages: freezed == naturalLanguages
          ? _value.naturalLanguages
          : naturalLanguages // ignore: cast_nullable_to_non_nullable
              as Iterable<String>?,
      personalizationImpact: freezed == personalizationImpact
          ? _value.personalizationImpact
          : personalizationImpact // ignore: cast_nullable_to_non_nullable
              as int?,
      getRankingInfo: freezed == getRankingInfo
          ? _value.getRankingInfo
          : getRankingInfo // ignore: cast_nullable_to_non_nullable
              as bool?,
      clickAnalytics: freezed == clickAnalytics
          ? _value.clickAnalytics
          : clickAnalytics // ignore: cast_nullable_to_non_nullable
              as bool?,
      analyticsTags: freezed == analyticsTags
          ? _value.analyticsTags
          : analyticsTags // ignore: cast_nullable_to_non_nullable
              as Iterable<String>?,
      percentileComputation: freezed == percentileComputation
          ? _value.percentileComputation
          : percentileComputation // ignore: cast_nullable_to_non_nullable
              as bool?,
      enableABTest: freezed == enableABTest
          ? _value.enableABTest
          : enableABTest // ignore: cast_nullable_to_non_nullable
              as bool?,
      enableReRanking: freezed == enableReRanking
          ? _value.enableReRanking
          : enableReRanking // ignore: cast_nullable_to_non_nullable
              as bool?,
      reRankingApplyFilter: freezed == reRankingApplyFilter
          ? _value.reRankingApplyFilter
          : reRankingApplyFilter // ignore: cast_nullable_to_non_nullable
              as String?,
      extra: freezed == extra
          ? _value._extra
          : extra // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_SearchParams implements _SearchParams {
  const _$_SearchParams(
      {this.query,
      this.page,
      this.hitsPerPage,
      this.facets,
      final Set<String>? disjunctiveFacets,
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
      @ignore final Map<String, dynamic>? extra})
      : _disjunctiveFacets = disjunctiveFacets,
        _extra = extra;

  /// Search query string
  @override
  final String? query;

  /// Search page number
  @override
  final int? page;

  /// Number of hits per page
  @override
  final int? hitsPerPage;

  /// Search facets list
  @override
  final Iterable<String>? facets;

  /// Disjunctive facets list
  final Set<String>? _disjunctiveFacets;

  /// Disjunctive facets list
  @override
  Set<String>? get disjunctiveFacets {
    final value = _disjunctiveFacets;
    if (value == null) return null;
    if (_disjunctiveFacets is EqualUnmodifiableSetView)
      return _disjunctiveFacets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(value);
  }

  /// Set of filter groups
  @override
  final String? filters;

  /// Search rule contexts
  @override
  final Iterable<String>? ruleContexts;

  /// Filter hits by facet value.
  @override
  final Iterable<String>? facetFilters;

  /// List of attributes to highlight.
  @override
  final Iterable<String>? attributesToHighlight;

  /// Gives control over which attributes to retrieve and which not to retrieve.
  @override
  final Iterable<String>? attributesToRetrieve;

  /// List of attributes to snippet,
  /// with an optional maximum number of words
  /// to snippet.
  @override
  final Iterable<String>? attributesToSnippet;

  /// The HTML name to insert after the highlighted parts in all highlight
  /// and snippet results.
  @override
  final String? highlightPostTag;

  /// The HTML name to insert before the highlighted parts in all highlight
  /// and snippet results.
  @override
  final String? highlightPreTag;

  /// Maximum number of facet hits to return during a search for facet values.
  @override
  final int? maxFacetHits;

  /// Maximum number of facet values to return for each facet during a regular
  /// search.
  @override
  final int? maxValuesPerFacet;

  /// Filter on numeric attributes.
  @override
  final Iterable<String>? numericFilters;

  /// Create filters for ranking purposes,
  /// where records that match the filter
  /// are ranked highest.
  @override
  final Iterable<String>? optionalFilters;

  /// Determines how to calculate the total score for filtering.
  @override
  final bool? sumOrFiltersScore;

  /// Filter hits by tags.
  @override
  final Iterable<String>? tagFilters;

  /// Associates a certain user token with the current search.
  @override
  final String? userToken;

  /// Whether the current query will be taken into account in the Analytics.
  @override
  final bool? analytics;

  /// Overrides the query parameter and performs a more generic search that can
  /// be used to find "similar" results.
  @override
  final String? similarQuery;

  /// Determines how to calculate the total score for filtering.
  @override
  final bool? sumOrFiltersScores;

  /// Force faceting to be applied after de-duplication
  /// (via the Distinct setting).
  @override
  final bool? facetingAfterDistinct;

  /// Controls how facet values are fetched.
  @override
  final String? sortFacetValuesBy;

  /// Set the number of hits to retrieve (used only with offset).
  @override
  final int? length;

  /// Search for entries around a central geolocation, enabling a geo search
  /// within a circular area
  @override
  final String? aroundLatLng;

  /// Search for entries around a given location automatically computed from
  /// the requester's IP address
  @override
  final bool? aroundLatLngViaIP;

  /// Define the maximum radius for a geo search (in meters).
  @override
  final String? aroundRadius;

  /// Precision of geo search (in meters), to add grouping by geo location
  /// to the ranking formula.
  @override
  final int? aroundPrecision;

  /// Minimum radius (in meters) used for a geo search when aroundRadius
  /// is not set.
  @override
  final int? minimumAroundRadius;

  /// Search inside a rectangular area (in geo coordinates).
  @override
  final Iterable<int>? insideBoundingBox;

  /// Search inside a polygon (in geo coordinates).
  @override
  final Iterable<int>? insidePolygon;

  /// This parameter changes the default values of certain parameters and
  /// settings that work best for a natural language query, such as
  /// ignorePlurals, removeStopWords, removeWordsIfNoResults,
  /// analyticsTags and ruleContexts. These parameters and settings work
  /// well together when the query is formatted in natural language
  /// instead of keywords, for example when your user performs a voice
  /// search.
  @override
  final Iterable<String>? naturalLanguages;

  /// Define the impact of the Personalization feature.
  @override
  final int? personalizationImpact;

  /// Retrieve detailed ranking information.
  @override
  final bool? getRankingInfo;

  /// Enable the Click Analytics feature.
  @override
  final bool? clickAnalytics;

  /// List of tags to apply to the query for analytics purposes.
  @override
  final Iterable<String>? analyticsTags;

  /// Whether to include or exclude a query from the processing-time percentile
  /// computation.
  @override
  final bool? percentileComputation;

  /// Whether this search should participate in running AB tests.
  @override
  final bool? enableABTest;

  /// Whether this search should use AI Re-Ranking.
  @override
  final bool? enableReRanking;

  /// When Dynamic Re-Ranking is enabled, only records that match these filters
  /// will be impacted by Dynamic Re-Ranking.
  @override
  final String? reRankingApplyFilter;

  /// Extra custom parameters
// ignore: invalid_annotation_target
  final Map<String, dynamic>? _extra;

  /// Extra custom parameters
// ignore: invalid_annotation_target
  @override
  @ignore
  Map<String, dynamic>? get extra {
    final value = _extra;
    if (value == null) return null;
    if (_extra is EqualUnmodifiableMapView) return _extra;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'SearchParams(query: $query, page: $page, hitsPerPage: $hitsPerPage, facets: $facets, disjunctiveFacets: $disjunctiveFacets, filters: $filters, ruleContexts: $ruleContexts, facetFilters: $facetFilters, attributesToHighlight: $attributesToHighlight, attributesToRetrieve: $attributesToRetrieve, attributesToSnippet: $attributesToSnippet, highlightPostTag: $highlightPostTag, highlightPreTag: $highlightPreTag, maxFacetHits: $maxFacetHits, maxValuesPerFacet: $maxValuesPerFacet, numericFilters: $numericFilters, optionalFilters: $optionalFilters, sumOrFiltersScore: $sumOrFiltersScore, tagFilters: $tagFilters, userToken: $userToken, analytics: $analytics, similarQuery: $similarQuery, sumOrFiltersScores: $sumOrFiltersScores, facetingAfterDistinct: $facetingAfterDistinct, sortFacetValuesBy: $sortFacetValuesBy, length: $length, aroundLatLng: $aroundLatLng, aroundLatLngViaIP: $aroundLatLngViaIP, aroundRadius: $aroundRadius, aroundPrecision: $aroundPrecision, minimumAroundRadius: $minimumAroundRadius, insideBoundingBox: $insideBoundingBox, insidePolygon: $insidePolygon, naturalLanguages: $naturalLanguages, personalizationImpact: $personalizationImpact, getRankingInfo: $getRankingInfo, clickAnalytics: $clickAnalytics, analyticsTags: $analyticsTags, percentileComputation: $percentileComputation, enableABTest: $enableABTest, enableReRanking: $enableReRanking, reRankingApplyFilter: $reRankingApplyFilter, extra: $extra)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchParams &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.hitsPerPage, hitsPerPage) ||
                other.hitsPerPage == hitsPerPage) &&
            const DeepCollectionEquality().equals(other.facets, facets) &&
            const DeepCollectionEquality()
                .equals(other._disjunctiveFacets, _disjunctiveFacets) &&
            (identical(other.filters, filters) || other.filters == filters) &&
            const DeepCollectionEquality()
                .equals(other.ruleContexts, ruleContexts) &&
            const DeepCollectionEquality()
                .equals(other.facetFilters, facetFilters) &&
            const DeepCollectionEquality()
                .equals(other.attributesToHighlight, attributesToHighlight) &&
            const DeepCollectionEquality()
                .equals(other.attributesToRetrieve, attributesToRetrieve) &&
            const DeepCollectionEquality()
                .equals(other.attributesToSnippet, attributesToSnippet) &&
            (identical(other.highlightPostTag, highlightPostTag) ||
                other.highlightPostTag == highlightPostTag) &&
            (identical(other.highlightPreTag, highlightPreTag) ||
                other.highlightPreTag == highlightPreTag) &&
            (identical(other.maxFacetHits, maxFacetHits) ||
                other.maxFacetHits == maxFacetHits) &&
            (identical(other.maxValuesPerFacet, maxValuesPerFacet) ||
                other.maxValuesPerFacet == maxValuesPerFacet) &&
            const DeepCollectionEquality()
                .equals(other.numericFilters, numericFilters) &&
            const DeepCollectionEquality()
                .equals(other.optionalFilters, optionalFilters) &&
            (identical(other.sumOrFiltersScore, sumOrFiltersScore) ||
                other.sumOrFiltersScore == sumOrFiltersScore) &&
            const DeepCollectionEquality()
                .equals(other.tagFilters, tagFilters) &&
            (identical(other.userToken, userToken) ||
                other.userToken == userToken) &&
            (identical(other.analytics, analytics) ||
                other.analytics == analytics) &&
            (identical(other.similarQuery, similarQuery) ||
                other.similarQuery == similarQuery) &&
            (identical(other.sumOrFiltersScores, sumOrFiltersScores) ||
                other.sumOrFiltersScores == sumOrFiltersScores) &&
            (identical(other.facetingAfterDistinct, facetingAfterDistinct) ||
                other.facetingAfterDistinct == facetingAfterDistinct) &&
            (identical(other.sortFacetValuesBy, sortFacetValuesBy) ||
                other.sortFacetValuesBy == sortFacetValuesBy) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.aroundLatLng, aroundLatLng) ||
                other.aroundLatLng == aroundLatLng) &&
            (identical(other.aroundLatLngViaIP, aroundLatLngViaIP) ||
                other.aroundLatLngViaIP == aroundLatLngViaIP) &&
            (identical(other.aroundRadius, aroundRadius) ||
                other.aroundRadius == aroundRadius) &&
            (identical(other.aroundPrecision, aroundPrecision) ||
                other.aroundPrecision == aroundPrecision) &&
            (identical(other.minimumAroundRadius, minimumAroundRadius) ||
                other.minimumAroundRadius == minimumAroundRadius) &&
            const DeepCollectionEquality()
                .equals(other.insideBoundingBox, insideBoundingBox) &&
            const DeepCollectionEquality()
                .equals(other.insidePolygon, insidePolygon) &&
            const DeepCollectionEquality()
                .equals(other.naturalLanguages, naturalLanguages) &&
            (identical(other.personalizationImpact, personalizationImpact) ||
                other.personalizationImpact == personalizationImpact) &&
            (identical(other.getRankingInfo, getRankingInfo) ||
                other.getRankingInfo == getRankingInfo) &&
            (identical(other.clickAnalytics, clickAnalytics) ||
                other.clickAnalytics == clickAnalytics) &&
            const DeepCollectionEquality()
                .equals(other.analyticsTags, analyticsTags) &&
            (identical(other.percentileComputation, percentileComputation) ||
                other.percentileComputation == percentileComputation) &&
            (identical(other.enableABTest, enableABTest) ||
                other.enableABTest == enableABTest) &&
            (identical(other.enableReRanking, enableReRanking) ||
                other.enableReRanking == enableReRanking) &&
            (identical(other.reRankingApplyFilter, reRankingApplyFilter) ||
                other.reRankingApplyFilter == reRankingApplyFilter) &&
            const DeepCollectionEquality().equals(other._extra, _extra));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        query,
        page,
        hitsPerPage,
        const DeepCollectionEquality().hash(facets),
        const DeepCollectionEquality().hash(_disjunctiveFacets),
        filters,
        const DeepCollectionEquality().hash(ruleContexts),
        const DeepCollectionEquality().hash(facetFilters),
        const DeepCollectionEquality().hash(attributesToHighlight),
        const DeepCollectionEquality().hash(attributesToRetrieve),
        const DeepCollectionEquality().hash(attributesToSnippet),
        highlightPostTag,
        highlightPreTag,
        maxFacetHits,
        maxValuesPerFacet,
        const DeepCollectionEquality().hash(numericFilters),
        const DeepCollectionEquality().hash(optionalFilters),
        sumOrFiltersScore,
        const DeepCollectionEquality().hash(tagFilters),
        userToken,
        analytics,
        similarQuery,
        sumOrFiltersScores,
        facetingAfterDistinct,
        sortFacetValuesBy,
        length,
        aroundLatLng,
        aroundLatLngViaIP,
        aroundRadius,
        aroundPrecision,
        minimumAroundRadius,
        const DeepCollectionEquality().hash(insideBoundingBox),
        const DeepCollectionEquality().hash(insidePolygon),
        const DeepCollectionEquality().hash(naturalLanguages),
        personalizationImpact,
        getRankingInfo,
        clickAnalytics,
        const DeepCollectionEquality().hash(analyticsTags),
        percentileComputation,
        enableABTest,
        enableReRanking,
        reRankingApplyFilter,
        const DeepCollectionEquality().hash(_extra)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchParamsCopyWith<_$_SearchParams> get copyWith =>
      __$$_SearchParamsCopyWithImpl<_$_SearchParams>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchParamsToJson(
      this,
    );
  }
}

abstract class _SearchParams implements SearchParams {
  const factory _SearchParams(
      {final String? query,
      final int? page,
      final int? hitsPerPage,
      final Iterable<String>? facets,
      final Set<String>? disjunctiveFacets,
      final String? filters,
      final Iterable<String>? ruleContexts,
      final Iterable<String>? facetFilters,
      final Iterable<String>? attributesToHighlight,
      final Iterable<String>? attributesToRetrieve,
      final Iterable<String>? attributesToSnippet,
      final String? highlightPostTag,
      final String? highlightPreTag,
      final int? maxFacetHits,
      final int? maxValuesPerFacet,
      final Iterable<String>? numericFilters,
      final Iterable<String>? optionalFilters,
      final bool? sumOrFiltersScore,
      final Iterable<String>? tagFilters,
      final String? userToken,
      final bool? analytics,
      final String? similarQuery,
      final bool? sumOrFiltersScores,
      final bool? facetingAfterDistinct,
      final String? sortFacetValuesBy,
      final int? length,
      final String? aroundLatLng,
      final bool? aroundLatLngViaIP,
      final String? aroundRadius,
      final int? aroundPrecision,
      final int? minimumAroundRadius,
      final Iterable<int>? insideBoundingBox,
      final Iterable<int>? insidePolygon,
      final Iterable<String>? naturalLanguages,
      final int? personalizationImpact,
      final bool? getRankingInfo,
      final bool? clickAnalytics,
      final Iterable<String>? analyticsTags,
      final bool? percentileComputation,
      final bool? enableABTest,
      final bool? enableReRanking,
      final String? reRankingApplyFilter,
      @ignore final Map<String, dynamic>? extra}) = _$_SearchParams;

  @override

  /// Search query string
  String? get query;
  @override

  /// Search page number
  int? get page;
  @override

  /// Number of hits per page
  int? get hitsPerPage;
  @override

  /// Search facets list
  Iterable<String>? get facets;
  @override

  /// Disjunctive facets list
  Set<String>? get disjunctiveFacets;
  @override

  /// Set of filter groups
  String? get filters;
  @override

  /// Search rule contexts
  Iterable<String>? get ruleContexts;
  @override

  /// Filter hits by facet value.
  Iterable<String>? get facetFilters;
  @override

  /// List of attributes to highlight.
  Iterable<String>? get attributesToHighlight;
  @override

  /// Gives control over which attributes to retrieve and which not to retrieve.
  Iterable<String>? get attributesToRetrieve;
  @override

  /// List of attributes to snippet,
  /// with an optional maximum number of words
  /// to snippet.
  Iterable<String>? get attributesToSnippet;
  @override

  /// The HTML name to insert after the highlighted parts in all highlight
  /// and snippet results.
  String? get highlightPostTag;
  @override

  /// The HTML name to insert before the highlighted parts in all highlight
  /// and snippet results.
  String? get highlightPreTag;
  @override

  /// Maximum number of facet hits to return during a search for facet values.
  int? get maxFacetHits;
  @override

  /// Maximum number of facet values to return for each facet during a regular
  /// search.
  int? get maxValuesPerFacet;
  @override

  /// Filter on numeric attributes.
  Iterable<String>? get numericFilters;
  @override

  /// Create filters for ranking purposes,
  /// where records that match the filter
  /// are ranked highest.
  Iterable<String>? get optionalFilters;
  @override

  /// Determines how to calculate the total score for filtering.
  bool? get sumOrFiltersScore;
  @override

  /// Filter hits by tags.
  Iterable<String>? get tagFilters;
  @override

  /// Associates a certain user token with the current search.
  String? get userToken;
  @override

  /// Whether the current query will be taken into account in the Analytics.
  bool? get analytics;
  @override

  /// Overrides the query parameter and performs a more generic search that can
  /// be used to find "similar" results.
  String? get similarQuery;
  @override

  /// Determines how to calculate the total score for filtering.
  bool? get sumOrFiltersScores;
  @override

  /// Force faceting to be applied after de-duplication
  /// (via the Distinct setting).
  bool? get facetingAfterDistinct;
  @override

  /// Controls how facet values are fetched.
  String? get sortFacetValuesBy;
  @override

  /// Set the number of hits to retrieve (used only with offset).
  int? get length;
  @override

  /// Search for entries around a central geolocation, enabling a geo search
  /// within a circular area
  String? get aroundLatLng;
  @override

  /// Search for entries around a given location automatically computed from
  /// the requester's IP address
  bool? get aroundLatLngViaIP;
  @override

  /// Define the maximum radius for a geo search (in meters).
  String? get aroundRadius;
  @override

  /// Precision of geo search (in meters), to add grouping by geo location
  /// to the ranking formula.
  int? get aroundPrecision;
  @override

  /// Minimum radius (in meters) used for a geo search when aroundRadius
  /// is not set.
  int? get minimumAroundRadius;
  @override

  /// Search inside a rectangular area (in geo coordinates).
  Iterable<int>? get insideBoundingBox;
  @override

  /// Search inside a polygon (in geo coordinates).
  Iterable<int>? get insidePolygon;
  @override

  /// This parameter changes the default values of certain parameters and
  /// settings that work best for a natural language query, such as
  /// ignorePlurals, removeStopWords, removeWordsIfNoResults,
  /// analyticsTags and ruleContexts. These parameters and settings work
  /// well together when the query is formatted in natural language
  /// instead of keywords, for example when your user performs a voice
  /// search.
  Iterable<String>? get naturalLanguages;
  @override

  /// Define the impact of the Personalization feature.
  int? get personalizationImpact;
  @override

  /// Retrieve detailed ranking information.
  bool? get getRankingInfo;
  @override

  /// Enable the Click Analytics feature.
  bool? get clickAnalytics;
  @override

  /// List of tags to apply to the query for analytics purposes.
  Iterable<String>? get analyticsTags;
  @override

  /// Whether to include or exclude a query from the processing-time percentile
  /// computation.
  bool? get percentileComputation;
  @override

  /// Whether this search should participate in running AB tests.
  bool? get enableABTest;
  @override

  /// Whether this search should use AI Re-Ranking.
  bool? get enableReRanking;
  @override

  /// When Dynamic Re-Ranking is enabled, only records that match these filters
  /// will be impacted by Dynamic Re-Ranking.
  String? get reRankingApplyFilter;
  @override

  /// Extra custom parameters
// ignore: invalid_annotation_target
  @ignore
  Map<String, dynamic>? get extra;
  @override
  @JsonKey(ignore: true)
  _$$_SearchParamsCopyWith<_$_SearchParams> get copyWith =>
      throw _privateConstructorUsedError;
}
