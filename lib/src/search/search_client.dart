import 'dart:async';

import 'package:algolia_lite/algolia_lite.dart';
import 'package:algolia_lite/src/search/encode.dart';
import 'package:meta/meta.dart';

import '../http/transport.dart';
import 'search_response.dart';

/// Client for search endpoints.
@sealed
abstract class SearchClient {
  /// Create a [SearchClient] instance.
  factory SearchClient(SearchConfig config) => _SearchClient(config);

  /// Create a [SearchClient] instance.
  factory SearchClient.create({
    required String applicationID,
    required String apiKey,
  }) =>
      _SearchClient(
        SearchConfig(applicationID: applicationID, apiKey: apiKey),
      );

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
}

class _SearchClient implements SearchClient {
  _SearchClient(SearchConfig config) : transport = HttpTransport(config);

  final HttpTransport transport;

  @override
  Future<SearchResponse> search(SearchRequest request) async {
    final json = await transport.request(
      method: 'POST',
      path: encodePath('/1/indexes/${request.indexName}/query'),
      body: request.encode(),
    );
    return SearchResponse(json);
  }

  @override
  Future<MultiSearchResponse> multiSearch(MultiSearchRequest request) async {
    final json = await transport.request(
      method: 'POST',
      path: '/1/indexes/*/queries',
      body: request.encode(),
    );
    return MultiSearchResponse(json);
  }

  @override
  Future<FacetSearchResponse> facetsSearch(FacetSearchRequest request) async {
    final json = await transport.request(
      method: 'POST',
      path: encodePath(
        '/1/indexes/${request.indexName}/facets/${request.facetName}/query',
      ),
      body: request.encode(),
    );
    return FacetSearchResponse(json);
  }

  @override
  Stream<BrowseResponse> browse(SearchRequest request) async* {
    final path = encodePath('/1/indexes/${request.indexName}/browse');
    String? cursor;
    while (true) {
      final json = await transport.request(
        method: 'POST',
        path: path,
        body: request.encode(cursor),
      );
      yield BrowseResponse(json);
      cursor = json['cursor'];
      if (cursor == null) break;
    }
  }
}
