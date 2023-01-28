import 'dart:async';

import 'package:algolia_lite/src/model/models.dart';
import 'package:algolia_lite/src/request_options.dart';
import 'package:algolia_lite/src/search/search.dart';
import 'package:algolia_lite/src/search/search_api_client.dart';
import 'package:meta/meta.dart';

/// Client for search, browse and objects endpoints.
@sealed
abstract class SearchClient {
  /// Create a [SearchClient] instance.
  factory SearchClient({
    required String applicationID,
    required String apiKey,
  }) {
    final config = SearchConfig(applicationID: applicationID, apiKey: apiKey);
    return SearchApiClient(config);
  }

  /// Create a [SearchClient] instance.
  factory SearchClient.create(SearchConfig config) => SearchApiClient(config);

  /// Method to query an index.
  Future<SearchResponse> search(
    SearchRequest request, [
    RequestOptions? requestOptions,
  ]);

  /// Send multiple search queries, potentially targeting multiple indices,
  /// in a single API call.
  Future<MultiSearchResponse> multiSearch(
    MultiSearchRequest request, [
    RequestOptions? requestOptions,
  ]);

  /// Search for values of a given facet, optionally restricting the returned
  /// values to those contained in objects matching other search criteria.
  Future<FacetSearchResponse> facetsSearch(
    FacetSearchRequest request, [
    RequestOptions? requestOptions,
  ]);

  /// Retrieve all objects from an index, for example, as a backup, for SEO, or
  /// for analytics. Each API request retrieves up to 1,000 objects and supports
  /// filters and full-text search via [request.params].
  Stream<BrowseResponse> browse(
    SearchRequest request, [
    RequestOptions? requestOptions,
  ]);

  /// Retrieve one object from the index.
  Future<ObjectResponse> object(
    ObjectRequest request, [
    RequestOptions? requestOptions,
  ]);

  /// Retrieve one or more objects, potentially from different indices.
  Future<ObjectsResponse> objects(
    ObjectsRequest request, [
    RequestOptions? requestOptions,
  ]);
}
