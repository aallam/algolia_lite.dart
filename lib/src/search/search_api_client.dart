import 'package:algolia_lite/src/core/core.dart';
import 'package:algolia_lite/src/http/transport.dart';
import 'package:algolia_lite/src/model/models.dart';
import 'package:algolia_lite/src/search/encode.dart';
import 'package:algolia_lite/src/search/search.dart';

class SearchApiClient implements SearchClient {
  SearchApiClient(SearchConfig config) : transport = HttpTransport(config);

  final HttpTransport transport;

  @override
  Future<SearchResponse> search(
    SearchRequest request, [
    RequestOptions? requestOptions,
  ]) async {
    final json = await transport.request(
      method: 'POST',
      path: '/1/indexes/${request.indexName}/query',
      body: request.encode(),
      requestOptions: requestOptions,
    );
    return SearchResponse.fromJson(json);
  }

  @override
  Future<MultiSearchResponse> multiSearch(
    MultiSearchRequest request, [
    RequestOptions? requestOptions,
  ]) async {
    final json = await transport.request(
      method: 'POST',
      path: '/1/indexes/*/queries',
      body: request.toJson(),
      requestOptions: requestOptions,
    );
    return MultiSearchResponse(json: json);
  }

  @override
  Future<FacetSearchResponse> facetsSearch(
    FacetSearchRequest request, [
    RequestOptions? requestOptions,
  ]) async {
    final json = await transport.request(
      method: 'POST',
      path: '/1/indexes/${request.indexName}/facets/${request.facetName}/query',
      body: request.toJson(),
      requestOptions: requestOptions,
    );
    return FacetSearchResponse(json: json);
  }

  @override
  Stream<BrowseResponse> browse(
    SearchRequest request, [
    RequestOptions? requestOptions,
  ]) async* {
    final path = '/1/indexes/${request.indexName}/browse';
    String? cursor;
    while (true) {
      final json = await transport.request(
        method: 'POST',
        path: path,
        body: request.encode(cursor),
        requestOptions: requestOptions,
      );
      yield BrowseResponse.fromJson(json);
      cursor = json['cursor']?.toString();
      if (cursor == null) break;
    }
  }

  @override
  Future<ObjectResponse> object(
    ObjectRequest request, [
    RequestOptions? requestOptions,
  ]) async {
    final json = await transport.request(
      method: 'GET',
      path: '/1/indexes/${request.indexName}/${request.objectID}',
      queryParams: request.toQueryParams(),
      requestOptions: requestOptions,
    );
    return ObjectResponse(json: json);
  }

  @override
  Future<ObjectsResponse> objects(
    ObjectsRequest request, [
    RequestOptions? requestOptions,
  ]) async {
    final json = await transport.request(
      method: 'POST',
      path: '/1/indexes/*/objects',
      body: request.toJson(),
      requestOptions: requestOptions,
    );
    return ObjectsResponse.fromJson(json);
  }
}
