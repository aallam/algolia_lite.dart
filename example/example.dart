import 'package:algolia_lite/algolia_lite.dart';

void main() async {
  /// Create search client
  final client = SearchClient(
    applicationID: 'MyApplicationID',
    apiKey: 'MyApiKey',
  );

  /// Make search request
  final searchResponse = await client.search(
    SearchRequest('MyIndexName')
      ..['query'] = 'george clo'
      ..['hitsPerPage'] = 2
      ..['getRankingInfo'] = 1,
  );
  print(searchResponse);

  /// Make multi search requests
  final params = {'query': 'van'};
  final multiSearchResponse = await client.multiSearch(
    MultiSearchRequest(requests: [
      SearchRequest.create(indexName: 'MyIndexName1', params: params),
      SearchRequest.create(indexName: 'MyIndexName2', params: params),
    ]),
  );
  print(multiSearchResponse);

  /// Make facet search
  final facetsSearchResponse = await client.facetsSearch(
    FacetSearchRequest(
      indexName: 'MyIndexName',
      facetName: 'categories',
      facetQuery: 'phone',
    ),
  );
  print(facetsSearchResponse);

  /// Make object request
  final objectResponse = await client.object(
    ObjectRequest(
      indexName: 'MyIndexName',
      objectID: 'MyObjectID',
      attributes: ['email', 'name'],
    ),
  );
  print(objectResponse);

  /// Make objects request
  final objectsResponse = await client.objects(
    [
      ObjectRequest(indexName: 'MyIndexName1', objectID: 'MyObjectID1'),
      ObjectRequest(indexName: 'MyIndexName1', objectID: 'MyObjectID2'),
    ],
  );
  print(objectsResponse);

  /// Make browse request
  final request = SearchRequest('MyIndexName');
  final stream = client.browse(request);
  await for (var response in stream) {
    print(response);
  }
}
