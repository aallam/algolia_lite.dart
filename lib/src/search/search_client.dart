import 'dart:async';

import 'package:meta/meta.dart';

import '../model/models.dart';
import 'search_api_client.dart';
import 'search_config.dart';

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
  Future<SearchResponse> search(SearchRequest request);

  /// Send multiple search queries, potentially targeting multiple indices,
  /// in a single API call.
  Future<MultiSearchResponse> multiSearch(MultiSearchRequest request);

  /// Search for values of a given facet, optionally restricting the returned
  /// values to those contained in objects matching other search criteria.
  Future<FacetSearchResponse> facetsSearch(FacetSearchRequest request);

  /// Retrieve all objects from an index, for example, as a backup, for SEO, or
  /// for analytics. Each API request retrieves up to 1,000 objects and supports
  /// filters and full-text search via [request.params].
  Stream<BrowseResponse> browse(SearchRequest request);

  /// Retrieve one object from the index.
  Future<ObjectResponse> object(ObjectRequest request);

  /// Retrieve one or more objects, potentially from different indices.
  Future<List<ObjectResponse>> objects(List<ObjectRequest> request);
}
