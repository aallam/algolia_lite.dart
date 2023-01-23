import 'package:algolia_lite/algolia_lite.dart';
import 'package:algolia_lite/src/search/encode.dart';
import 'package:meta/meta.dart';

import '../http/transport.dart';

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

  /// Return objects that match the query.
  Future<Map> search(SearchRequest request);

  /// Send multiple search queries, potentially targeting multiple indices,
  /// in a single API call.
  Future<Map> multiSearch(MultiSearchRequest request);

  /// Search for values of a given facet, optionally restricting the returned
  /// values to those contained in objects matching other search criteria.
  Future<Map> facetSearch(FacetSearchRequest request);
}

class _SearchClient implements SearchClient {
  _SearchClient(SearchConfig config) : transport = HttpTransport(config);

  final HttpTransport transport;

  @override
  Future<Map> search(SearchRequest request) {
    return transport.request(
      method: 'POST',
      path: encodePath('/1/indexes/${request.indexName}/query'),
      body: request.encode(),
    );
  }

  @override
  Future<Map> multiSearch(MultiSearchRequest request) {
    return transport.request(
      method: 'POST',
      path: '/1/indexes/*/queries',
      body: request.encode(),
    );
  }

  @override
  Future<Map> facetSearch(FacetSearchRequest request) {
    return transport.request(
      method: 'POST',
      path: encodePath(
        '/1/indexes/${request.indexName}/facets/${request.facetName}/query',
      ),
      body: request.encode(),
    );
  }
}
