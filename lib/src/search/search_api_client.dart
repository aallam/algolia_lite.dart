import '../http/transport.dart';
import '../model/models.dart';
import 'encode.dart';
import 'search_client.dart';
import 'search_config.dart';

class SearchApiClient implements SearchClient {
  SearchApiClient(SearchConfig config) : transport = HttpTransport(config);

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

  @override
  Future<ObjectResponse> object(ObjectRequest request) async {
    final json = await transport.request(
      method: 'GET',
      path: encodePath(
        '/1/indexes/${request.indexName}/${request.objectID}',
        request.queryParams(),
      ),
    );
    return ObjectResponse(json);
  }

  @override
  Future<List<ObjectResponse>> objects(List<ObjectRequest> request) async {
    final json = await transport.request(
      method: 'POST',
      path: '/1/indexes/*/objects',
      body: request.encode(),
    );
    final results = json['results'] as List;
    final objects = results.map((e) => Map<String, dynamic>.from(e)).toList();
    return objects.map((json) => ObjectResponse(json)).toList();
  }
}
