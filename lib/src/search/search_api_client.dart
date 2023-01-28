import 'package:algolia_lite/src/http/transport.dart';
import 'package:algolia_lite/src/model/models.dart';
import 'package:algolia_lite/src/model/objects_request.dart';
import 'package:algolia_lite/src/model/objects_response.dart';
import 'package:algolia_lite/src/search/encode.dart';
import 'package:algolia_lite/src/search/search.dart';

class SearchApiClient implements SearchClient {
  SearchApiClient(SearchConfig config) : transport = HttpTransport(config);

  final HttpTransport transport;

  @override
  Future<SearchResponse> search(SearchRequest request) async {
    final json = await transport.request(
      method: 'POST',
      path: '/1/indexes/${request.indexName}/query',
      body: request.encode(),
    );
    return SearchResponse.fromJson(json);
  }

  @override
  Future<MultiSearchResponse> multiSearch(MultiSearchRequest request) async {
    final json = await transport.request(
      method: 'POST',
      path: '/1/indexes/*/queries',
      body: request.toJson(),
    );
    return MultiSearchResponse(json);
  }

  @override
  Future<FacetSearchResponse> facetsSearch(FacetSearchRequest request) async {
    final json = await transport.request(
      method: 'POST',
      path: '/1/indexes/${request.indexName}/facets/${request.facetName}/query',
      body: request.toJson(),
    );
    return FacetSearchResponse(json);
  }

  @override
  Stream<BrowseResponse> browse(SearchRequest request) async* {
    final path = '/1/indexes/${request.indexName}/browse';
    String? cursor;
    while (true) {
      final json = await transport.request(
        method: 'POST',
        path: path,
        body: request.encode(cursor),
      );
      yield BrowseResponse.fromJson(json);
      cursor = json['cursor']?.toString();
      if (cursor == null) break;
    }
  }

  @override
  Future<ObjectResponse> object(ObjectRequest request) async {
    final json = await transport.request(
      method: 'GET',
      path: '/1/indexes/${request.indexName}/${request.objectID}',
      queryParams: request.toQueryParams(),
    );
    return ObjectResponse(json);
  }

  @override
  Future<Iterable<ObjectResponse>> objects(
    Iterable<ObjectRequest> requests,
  ) async {
    final json = await transport.request(
      method: 'POST',
      path: '/1/indexes/*/objects',
      body: ObjectsRequest(requests).toJson(),
    );
    return ObjectsResponse.fromJson(json).results;
  }
}
