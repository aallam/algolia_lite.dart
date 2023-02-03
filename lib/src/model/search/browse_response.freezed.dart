// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'browse_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BrowseResponse _$BrowseResponseFromJson(Map<String, dynamic> json) {
  return _BrowseResponse.fromJson(json);
}

/// @nodoc
mixin _$BrowseResponse {
  /// If a search encounters an index that is being A/B tested, abTestID reports
  /// the ongoing A/B test ID.
  int? get abTestID => throw _privateConstructorUsedError;

  /// If a search encounters an index that is being A/B tested, abTestVariantID
  /// reports the variant ID of the index used (starting at 1).
  int? get abTestVariantID => throw _privateConstructorUsedError;

  /// The computed geo location.
  String? get aroundLatLng => throw _privateConstructorUsedError;

  /// The automatically computed radius.
  String? get automaticRadius => throw _privateConstructorUsedError;

  /// Whether the facet count is exhaustive or approximate.
  bool? get exhaustiveFacetsCount => throw _privateConstructorUsedError;

  /// Indicate if the nbHits count was exhaustive or approximate.
  bool? get exhaustiveNbHits => throw _privateConstructorUsedError;

  /// Indicate if the typo-tolerance search was exhaustive or approximate
  /// (only included when typo-tolerance is enabled).
  bool? get exhaustiveTypo => throw _privateConstructorUsedError;

  /// A mapping of each facet name to the corresponding facet counts.
  Map<String, int>? get facets => throw _privateConstructorUsedError;

  /// Statistics for numerical facets.
  @JsonKey(name: 'facets_stats')
  Map<String, int>? get facetsStats => throw _privateConstructorUsedError;

  /// The number of hits per page.
  int get hitsPerPage => throw _privateConstructorUsedError;

  /// Index name used for the query.
  String? get index => throw _privateConstructorUsedError;

  /// Index name used for the query. In the case of an A/B test,
  /// the targeted index isn't always the index used by the query.
  String? get indexUsed => throw _privateConstructorUsedError;

  /// Used to return warnings about the query.
  String? get message => throw _privateConstructorUsedError;

  /// Number of hits that the search query matched.
  int get nbHits => throw _privateConstructorUsedError;

  /// Number of pages available for the current query.
  int get nbPages => throw _privateConstructorUsedError;

  /// The number of hits selected and sorted by the relevant sort algorithm.
  int? get nbSortedHits => throw _privateConstructorUsedError;

  /// Specify the page to retrieve.
  int get page => throw _privateConstructorUsedError;

  /// A url-encoded string of all search parameters.
  String get params => throw _privateConstructorUsedError;

  /// The query string that will be searched, after normalization.
  String? get parsedQuery => throw _privateConstructorUsedError;

  /// Time the server took to process the request, in milliseconds.
  int get processingTimeMS => throw _privateConstructorUsedError;

  /// The text to search in the index.
  String get query => throw _privateConstructorUsedError;

  /// A markup text indicating which parts of the original query have been
  /// removed in order to retrieve a non-empty result set.
  String? get queryAfterRemoval => throw _privateConstructorUsedError;

  /// Actual host name of the server that processed the request.
  String? get serverUsed => throw _privateConstructorUsedError;

  /// Lets you store custom data in your indices.
  Map<String, dynamic>? get userData => throw _privateConstructorUsedError;

  /// Content defining how the search interface should be rendered.
  /// Can be set via the settings for a default value and can be overridden
  /// via rules.
  Map<String, dynamic>? get renderingContent =>
      throw _privateConstructorUsedError;

  /// Array of objects (hit)
  Iterable<Map<String, dynamic>> get hits => throw _privateConstructorUsedError;

  /// Cursor indicating the location to resume browsing from.
  /// Must match the value returned by the previous call.
  String? get cursor => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BrowseResponseCopyWith<BrowseResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrowseResponseCopyWith<$Res> {
  factory $BrowseResponseCopyWith(
          BrowseResponse value, $Res Function(BrowseResponse) then) =
      _$BrowseResponseCopyWithImpl<$Res, BrowseResponse>;
  @useResult
  $Res call(
      {int? abTestID,
      int? abTestVariantID,
      String? aroundLatLng,
      String? automaticRadius,
      bool? exhaustiveFacetsCount,
      bool? exhaustiveNbHits,
      bool? exhaustiveTypo,
      Map<String, int>? facets,
      @JsonKey(name: 'facets_stats') Map<String, int>? facetsStats,
      int hitsPerPage,
      String? index,
      String? indexUsed,
      String? message,
      int nbHits,
      int nbPages,
      int? nbSortedHits,
      int page,
      String params,
      String? parsedQuery,
      int processingTimeMS,
      String query,
      String? queryAfterRemoval,
      String? serverUsed,
      Map<String, dynamic>? userData,
      Map<String, dynamic>? renderingContent,
      Iterable<Map<String, dynamic>> hits,
      String? cursor});
}

/// @nodoc
class _$BrowseResponseCopyWithImpl<$Res, $Val extends BrowseResponse>
    implements $BrowseResponseCopyWith<$Res> {
  _$BrowseResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? abTestID = freezed,
    Object? abTestVariantID = freezed,
    Object? aroundLatLng = freezed,
    Object? automaticRadius = freezed,
    Object? exhaustiveFacetsCount = freezed,
    Object? exhaustiveNbHits = freezed,
    Object? exhaustiveTypo = freezed,
    Object? facets = freezed,
    Object? facetsStats = freezed,
    Object? hitsPerPage = null,
    Object? index = freezed,
    Object? indexUsed = freezed,
    Object? message = freezed,
    Object? nbHits = null,
    Object? nbPages = null,
    Object? nbSortedHits = freezed,
    Object? page = null,
    Object? params = null,
    Object? parsedQuery = freezed,
    Object? processingTimeMS = null,
    Object? query = null,
    Object? queryAfterRemoval = freezed,
    Object? serverUsed = freezed,
    Object? userData = freezed,
    Object? renderingContent = freezed,
    Object? hits = null,
    Object? cursor = freezed,
  }) {
    return _then(_value.copyWith(
      abTestID: freezed == abTestID
          ? _value.abTestID
          : abTestID // ignore: cast_nullable_to_non_nullable
              as int?,
      abTestVariantID: freezed == abTestVariantID
          ? _value.abTestVariantID
          : abTestVariantID // ignore: cast_nullable_to_non_nullable
              as int?,
      aroundLatLng: freezed == aroundLatLng
          ? _value.aroundLatLng
          : aroundLatLng // ignore: cast_nullable_to_non_nullable
              as String?,
      automaticRadius: freezed == automaticRadius
          ? _value.automaticRadius
          : automaticRadius // ignore: cast_nullable_to_non_nullable
              as String?,
      exhaustiveFacetsCount: freezed == exhaustiveFacetsCount
          ? _value.exhaustiveFacetsCount
          : exhaustiveFacetsCount // ignore: cast_nullable_to_non_nullable
              as bool?,
      exhaustiveNbHits: freezed == exhaustiveNbHits
          ? _value.exhaustiveNbHits
          : exhaustiveNbHits // ignore: cast_nullable_to_non_nullable
              as bool?,
      exhaustiveTypo: freezed == exhaustiveTypo
          ? _value.exhaustiveTypo
          : exhaustiveTypo // ignore: cast_nullable_to_non_nullable
              as bool?,
      facets: freezed == facets
          ? _value.facets
          : facets // ignore: cast_nullable_to_non_nullable
              as Map<String, int>?,
      facetsStats: freezed == facetsStats
          ? _value.facetsStats
          : facetsStats // ignore: cast_nullable_to_non_nullable
              as Map<String, int>?,
      hitsPerPage: null == hitsPerPage
          ? _value.hitsPerPage
          : hitsPerPage // ignore: cast_nullable_to_non_nullable
              as int,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as String?,
      indexUsed: freezed == indexUsed
          ? _value.indexUsed
          : indexUsed // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      nbHits: null == nbHits
          ? _value.nbHits
          : nbHits // ignore: cast_nullable_to_non_nullable
              as int,
      nbPages: null == nbPages
          ? _value.nbPages
          : nbPages // ignore: cast_nullable_to_non_nullable
              as int,
      nbSortedHits: freezed == nbSortedHits
          ? _value.nbSortedHits
          : nbSortedHits // ignore: cast_nullable_to_non_nullable
              as int?,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as String,
      parsedQuery: freezed == parsedQuery
          ? _value.parsedQuery
          : parsedQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      processingTimeMS: null == processingTimeMS
          ? _value.processingTimeMS
          : processingTimeMS // ignore: cast_nullable_to_non_nullable
              as int,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      queryAfterRemoval: freezed == queryAfterRemoval
          ? _value.queryAfterRemoval
          : queryAfterRemoval // ignore: cast_nullable_to_non_nullable
              as String?,
      serverUsed: freezed == serverUsed
          ? _value.serverUsed
          : serverUsed // ignore: cast_nullable_to_non_nullable
              as String?,
      userData: freezed == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      renderingContent: freezed == renderingContent
          ? _value.renderingContent
          : renderingContent // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      hits: null == hits
          ? _value.hits
          : hits // ignore: cast_nullable_to_non_nullable
              as Iterable<Map<String, dynamic>>,
      cursor: freezed == cursor
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BrowseResponseCopyWith<$Res>
    implements $BrowseResponseCopyWith<$Res> {
  factory _$$_BrowseResponseCopyWith(
          _$_BrowseResponse value, $Res Function(_$_BrowseResponse) then) =
      __$$_BrowseResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? abTestID,
      int? abTestVariantID,
      String? aroundLatLng,
      String? automaticRadius,
      bool? exhaustiveFacetsCount,
      bool? exhaustiveNbHits,
      bool? exhaustiveTypo,
      Map<String, int>? facets,
      @JsonKey(name: 'facets_stats') Map<String, int>? facetsStats,
      int hitsPerPage,
      String? index,
      String? indexUsed,
      String? message,
      int nbHits,
      int nbPages,
      int? nbSortedHits,
      int page,
      String params,
      String? parsedQuery,
      int processingTimeMS,
      String query,
      String? queryAfterRemoval,
      String? serverUsed,
      Map<String, dynamic>? userData,
      Map<String, dynamic>? renderingContent,
      Iterable<Map<String, dynamic>> hits,
      String? cursor});
}

/// @nodoc
class __$$_BrowseResponseCopyWithImpl<$Res>
    extends _$BrowseResponseCopyWithImpl<$Res, _$_BrowseResponse>
    implements _$$_BrowseResponseCopyWith<$Res> {
  __$$_BrowseResponseCopyWithImpl(
      _$_BrowseResponse _value, $Res Function(_$_BrowseResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? abTestID = freezed,
    Object? abTestVariantID = freezed,
    Object? aroundLatLng = freezed,
    Object? automaticRadius = freezed,
    Object? exhaustiveFacetsCount = freezed,
    Object? exhaustiveNbHits = freezed,
    Object? exhaustiveTypo = freezed,
    Object? facets = freezed,
    Object? facetsStats = freezed,
    Object? hitsPerPage = null,
    Object? index = freezed,
    Object? indexUsed = freezed,
    Object? message = freezed,
    Object? nbHits = null,
    Object? nbPages = null,
    Object? nbSortedHits = freezed,
    Object? page = null,
    Object? params = null,
    Object? parsedQuery = freezed,
    Object? processingTimeMS = null,
    Object? query = null,
    Object? queryAfterRemoval = freezed,
    Object? serverUsed = freezed,
    Object? userData = freezed,
    Object? renderingContent = freezed,
    Object? hits = null,
    Object? cursor = freezed,
  }) {
    return _then(_$_BrowseResponse(
      abTestID: freezed == abTestID
          ? _value.abTestID
          : abTestID // ignore: cast_nullable_to_non_nullable
              as int?,
      abTestVariantID: freezed == abTestVariantID
          ? _value.abTestVariantID
          : abTestVariantID // ignore: cast_nullable_to_non_nullable
              as int?,
      aroundLatLng: freezed == aroundLatLng
          ? _value.aroundLatLng
          : aroundLatLng // ignore: cast_nullable_to_non_nullable
              as String?,
      automaticRadius: freezed == automaticRadius
          ? _value.automaticRadius
          : automaticRadius // ignore: cast_nullable_to_non_nullable
              as String?,
      exhaustiveFacetsCount: freezed == exhaustiveFacetsCount
          ? _value.exhaustiveFacetsCount
          : exhaustiveFacetsCount // ignore: cast_nullable_to_non_nullable
              as bool?,
      exhaustiveNbHits: freezed == exhaustiveNbHits
          ? _value.exhaustiveNbHits
          : exhaustiveNbHits // ignore: cast_nullable_to_non_nullable
              as bool?,
      exhaustiveTypo: freezed == exhaustiveTypo
          ? _value.exhaustiveTypo
          : exhaustiveTypo // ignore: cast_nullable_to_non_nullable
              as bool?,
      facets: freezed == facets
          ? _value._facets
          : facets // ignore: cast_nullable_to_non_nullable
              as Map<String, int>?,
      facetsStats: freezed == facetsStats
          ? _value._facetsStats
          : facetsStats // ignore: cast_nullable_to_non_nullable
              as Map<String, int>?,
      hitsPerPage: null == hitsPerPage
          ? _value.hitsPerPage
          : hitsPerPage // ignore: cast_nullable_to_non_nullable
              as int,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as String?,
      indexUsed: freezed == indexUsed
          ? _value.indexUsed
          : indexUsed // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      nbHits: null == nbHits
          ? _value.nbHits
          : nbHits // ignore: cast_nullable_to_non_nullable
              as int,
      nbPages: null == nbPages
          ? _value.nbPages
          : nbPages // ignore: cast_nullable_to_non_nullable
              as int,
      nbSortedHits: freezed == nbSortedHits
          ? _value.nbSortedHits
          : nbSortedHits // ignore: cast_nullable_to_non_nullable
              as int?,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as String,
      parsedQuery: freezed == parsedQuery
          ? _value.parsedQuery
          : parsedQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      processingTimeMS: null == processingTimeMS
          ? _value.processingTimeMS
          : processingTimeMS // ignore: cast_nullable_to_non_nullable
              as int,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      queryAfterRemoval: freezed == queryAfterRemoval
          ? _value.queryAfterRemoval
          : queryAfterRemoval // ignore: cast_nullable_to_non_nullable
              as String?,
      serverUsed: freezed == serverUsed
          ? _value.serverUsed
          : serverUsed // ignore: cast_nullable_to_non_nullable
              as String?,
      userData: freezed == userData
          ? _value._userData
          : userData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      renderingContent: freezed == renderingContent
          ? _value._renderingContent
          : renderingContent // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      hits: null == hits
          ? _value.hits
          : hits // ignore: cast_nullable_to_non_nullable
              as Iterable<Map<String, dynamic>>,
      cursor: freezed == cursor
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
@internal
class _$_BrowseResponse implements _BrowseResponse {
  const _$_BrowseResponse(
      {this.abTestID,
      this.abTestVariantID,
      this.aroundLatLng,
      this.automaticRadius,
      this.exhaustiveFacetsCount,
      this.exhaustiveNbHits,
      this.exhaustiveTypo,
      final Map<String, int>? facets,
      @JsonKey(name: 'facets_stats') final Map<String, int>? facetsStats,
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
      this.queryAfterRemoval,
      this.serverUsed,
      final Map<String, dynamic>? userData,
      final Map<String, dynamic>? renderingContent,
      required this.hits,
      this.cursor})
      : _facets = facets,
        _facetsStats = facetsStats,
        _userData = userData,
        _renderingContent = renderingContent;

  factory _$_BrowseResponse.fromJson(Map<String, dynamic> json) =>
      _$$_BrowseResponseFromJson(json);

  /// If a search encounters an index that is being A/B tested, abTestID reports
  /// the ongoing A/B test ID.
  @override
  final int? abTestID;

  /// If a search encounters an index that is being A/B tested, abTestVariantID
  /// reports the variant ID of the index used (starting at 1).
  @override
  final int? abTestVariantID;

  /// The computed geo location.
  @override
  final String? aroundLatLng;

  /// The automatically computed radius.
  @override
  final String? automaticRadius;

  /// Whether the facet count is exhaustive or approximate.
  @override
  final bool? exhaustiveFacetsCount;

  /// Indicate if the nbHits count was exhaustive or approximate.
  @override
  final bool? exhaustiveNbHits;

  /// Indicate if the typo-tolerance search was exhaustive or approximate
  /// (only included when typo-tolerance is enabled).
  @override
  final bool? exhaustiveTypo;

  /// A mapping of each facet name to the corresponding facet counts.
  final Map<String, int>? _facets;

  /// A mapping of each facet name to the corresponding facet counts.
  @override
  Map<String, int>? get facets {
    final value = _facets;
    if (value == null) return null;
    if (_facets is EqualUnmodifiableMapView) return _facets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Statistics for numerical facets.
  final Map<String, int>? _facetsStats;

  /// Statistics for numerical facets.
  @override
  @JsonKey(name: 'facets_stats')
  Map<String, int>? get facetsStats {
    final value = _facetsStats;
    if (value == null) return null;
    if (_facetsStats is EqualUnmodifiableMapView) return _facetsStats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// The number of hits per page.
  @override
  final int hitsPerPage;

  /// Index name used for the query.
  @override
  final String? index;

  /// Index name used for the query. In the case of an A/B test,
  /// the targeted index isn't always the index used by the query.
  @override
  final String? indexUsed;

  /// Used to return warnings about the query.
  @override
  final String? message;

  /// Number of hits that the search query matched.
  @override
  final int nbHits;

  /// Number of pages available for the current query.
  @override
  final int nbPages;

  /// The number of hits selected and sorted by the relevant sort algorithm.
  @override
  final int? nbSortedHits;

  /// Specify the page to retrieve.
  @override
  final int page;

  /// A url-encoded string of all search parameters.
  @override
  final String params;

  /// The query string that will be searched, after normalization.
  @override
  final String? parsedQuery;

  /// Time the server took to process the request, in milliseconds.
  @override
  final int processingTimeMS;

  /// The text to search in the index.
  @override
  final String query;

  /// A markup text indicating which parts of the original query have been
  /// removed in order to retrieve a non-empty result set.
  @override
  final String? queryAfterRemoval;

  /// Actual host name of the server that processed the request.
  @override
  final String? serverUsed;

  /// Lets you store custom data in your indices.
  final Map<String, dynamic>? _userData;

  /// Lets you store custom data in your indices.
  @override
  Map<String, dynamic>? get userData {
    final value = _userData;
    if (value == null) return null;
    if (_userData is EqualUnmodifiableMapView) return _userData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Content defining how the search interface should be rendered.
  /// Can be set via the settings for a default value and can be overridden
  /// via rules.
  final Map<String, dynamic>? _renderingContent;

  /// Content defining how the search interface should be rendered.
  /// Can be set via the settings for a default value and can be overridden
  /// via rules.
  @override
  Map<String, dynamic>? get renderingContent {
    final value = _renderingContent;
    if (value == null) return null;
    if (_renderingContent is EqualUnmodifiableMapView) return _renderingContent;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Array of objects (hit)
  @override
  final Iterable<Map<String, dynamic>> hits;

  /// Cursor indicating the location to resume browsing from.
  /// Must match the value returned by the previous call.
  @override
  final String? cursor;

  @override
  String toString() {
    return 'BrowseResponse(abTestID: $abTestID, abTestVariantID: $abTestVariantID, aroundLatLng: $aroundLatLng, automaticRadius: $automaticRadius, exhaustiveFacetsCount: $exhaustiveFacetsCount, exhaustiveNbHits: $exhaustiveNbHits, exhaustiveTypo: $exhaustiveTypo, facets: $facets, facetsStats: $facetsStats, hitsPerPage: $hitsPerPage, index: $index, indexUsed: $indexUsed, message: $message, nbHits: $nbHits, nbPages: $nbPages, nbSortedHits: $nbSortedHits, page: $page, params: $params, parsedQuery: $parsedQuery, processingTimeMS: $processingTimeMS, query: $query, queryAfterRemoval: $queryAfterRemoval, serverUsed: $serverUsed, userData: $userData, renderingContent: $renderingContent, hits: $hits, cursor: $cursor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BrowseResponse &&
            (identical(other.abTestID, abTestID) ||
                other.abTestID == abTestID) &&
            (identical(other.abTestVariantID, abTestVariantID) ||
                other.abTestVariantID == abTestVariantID) &&
            (identical(other.aroundLatLng, aroundLatLng) ||
                other.aroundLatLng == aroundLatLng) &&
            (identical(other.automaticRadius, automaticRadius) ||
                other.automaticRadius == automaticRadius) &&
            (identical(other.exhaustiveFacetsCount, exhaustiveFacetsCount) ||
                other.exhaustiveFacetsCount == exhaustiveFacetsCount) &&
            (identical(other.exhaustiveNbHits, exhaustiveNbHits) ||
                other.exhaustiveNbHits == exhaustiveNbHits) &&
            (identical(other.exhaustiveTypo, exhaustiveTypo) ||
                other.exhaustiveTypo == exhaustiveTypo) &&
            const DeepCollectionEquality().equals(other._facets, _facets) &&
            const DeepCollectionEquality()
                .equals(other._facetsStats, _facetsStats) &&
            (identical(other.hitsPerPage, hitsPerPage) ||
                other.hitsPerPage == hitsPerPage) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.indexUsed, indexUsed) ||
                other.indexUsed == indexUsed) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.nbHits, nbHits) || other.nbHits == nbHits) &&
            (identical(other.nbPages, nbPages) || other.nbPages == nbPages) &&
            (identical(other.nbSortedHits, nbSortedHits) ||
                other.nbSortedHits == nbSortedHits) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.params, params) || other.params == params) &&
            (identical(other.parsedQuery, parsedQuery) ||
                other.parsedQuery == parsedQuery) &&
            (identical(other.processingTimeMS, processingTimeMS) ||
                other.processingTimeMS == processingTimeMS) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.queryAfterRemoval, queryAfterRemoval) ||
                other.queryAfterRemoval == queryAfterRemoval) &&
            (identical(other.serverUsed, serverUsed) ||
                other.serverUsed == serverUsed) &&
            const DeepCollectionEquality().equals(other._userData, _userData) &&
            const DeepCollectionEquality()
                .equals(other._renderingContent, _renderingContent) &&
            const DeepCollectionEquality().equals(other.hits, hits) &&
            (identical(other.cursor, cursor) || other.cursor == cursor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        abTestID,
        abTestVariantID,
        aroundLatLng,
        automaticRadius,
        exhaustiveFacetsCount,
        exhaustiveNbHits,
        exhaustiveTypo,
        const DeepCollectionEquality().hash(_facets),
        const DeepCollectionEquality().hash(_facetsStats),
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
        const DeepCollectionEquality().hash(_userData),
        const DeepCollectionEquality().hash(_renderingContent),
        const DeepCollectionEquality().hash(hits),
        cursor
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BrowseResponseCopyWith<_$_BrowseResponse> get copyWith =>
      __$$_BrowseResponseCopyWithImpl<_$_BrowseResponse>(this, _$identity);
}

abstract class _BrowseResponse implements BrowseResponse {
  const factory _BrowseResponse(
      {final int? abTestID,
      final int? abTestVariantID,
      final String? aroundLatLng,
      final String? automaticRadius,
      final bool? exhaustiveFacetsCount,
      final bool? exhaustiveNbHits,
      final bool? exhaustiveTypo,
      final Map<String, int>? facets,
      @JsonKey(name: 'facets_stats') final Map<String, int>? facetsStats,
      required final int hitsPerPage,
      final String? index,
      final String? indexUsed,
      final String? message,
      required final int nbHits,
      required final int nbPages,
      final int? nbSortedHits,
      required final int page,
      required final String params,
      final String? parsedQuery,
      required final int processingTimeMS,
      required final String query,
      final String? queryAfterRemoval,
      final String? serverUsed,
      final Map<String, dynamic>? userData,
      final Map<String, dynamic>? renderingContent,
      required final Iterable<Map<String, dynamic>> hits,
      final String? cursor}) = _$_BrowseResponse;

  factory _BrowseResponse.fromJson(Map<String, dynamic> json) =
      _$_BrowseResponse.fromJson;

  @override

  /// If a search encounters an index that is being A/B tested, abTestID reports
  /// the ongoing A/B test ID.
  int? get abTestID;
  @override

  /// If a search encounters an index that is being A/B tested, abTestVariantID
  /// reports the variant ID of the index used (starting at 1).
  int? get abTestVariantID;
  @override

  /// The computed geo location.
  String? get aroundLatLng;
  @override

  /// The automatically computed radius.
  String? get automaticRadius;
  @override

  /// Whether the facet count is exhaustive or approximate.
  bool? get exhaustiveFacetsCount;
  @override

  /// Indicate if the nbHits count was exhaustive or approximate.
  bool? get exhaustiveNbHits;
  @override

  /// Indicate if the typo-tolerance search was exhaustive or approximate
  /// (only included when typo-tolerance is enabled).
  bool? get exhaustiveTypo;
  @override

  /// A mapping of each facet name to the corresponding facet counts.
  Map<String, int>? get facets;
  @override

  /// Statistics for numerical facets.
  @JsonKey(name: 'facets_stats')
  Map<String, int>? get facetsStats;
  @override

  /// The number of hits per page.
  int get hitsPerPage;
  @override

  /// Index name used for the query.
  String? get index;
  @override

  /// Index name used for the query. In the case of an A/B test,
  /// the targeted index isn't always the index used by the query.
  String? get indexUsed;
  @override

  /// Used to return warnings about the query.
  String? get message;
  @override

  /// Number of hits that the search query matched.
  int get nbHits;
  @override

  /// Number of pages available for the current query.
  int get nbPages;
  @override

  /// The number of hits selected and sorted by the relevant sort algorithm.
  int? get nbSortedHits;
  @override

  /// Specify the page to retrieve.
  int get page;
  @override

  /// A url-encoded string of all search parameters.
  String get params;
  @override

  /// The query string that will be searched, after normalization.
  String? get parsedQuery;
  @override

  /// Time the server took to process the request, in milliseconds.
  int get processingTimeMS;
  @override

  /// The text to search in the index.
  String get query;
  @override

  /// A markup text indicating which parts of the original query have been
  /// removed in order to retrieve a non-empty result set.
  String? get queryAfterRemoval;
  @override

  /// Actual host name of the server that processed the request.
  String? get serverUsed;
  @override

  /// Lets you store custom data in your indices.
  Map<String, dynamic>? get userData;
  @override

  /// Content defining how the search interface should be rendered.
  /// Can be set via the settings for a default value and can be overridden
  /// via rules.
  Map<String, dynamic>? get renderingContent;
  @override

  /// Array of objects (hit)
  Iterable<Map<String, dynamic>> get hits;
  @override

  /// Cursor indicating the location to resume browsing from.
  /// Must match the value returned by the previous call.
  String? get cursor;
  @override
  @JsonKey(ignore: true)
  _$$_BrowseResponseCopyWith<_$_BrowseResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
