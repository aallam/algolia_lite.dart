import 'package:algolia_lite/algolia_lite.dart';
import 'package:algolia_lite/src/model/search_params.dart';

void main() async {
  /// Create search client
  final client = SearchClient(
    applicationID: 'MyApplicationID',
    apiKey: 'MyApiKey',
  );

  /// Make search request
  final searchResponse = await client.search(
    const SearchRequest(
      indexName: 'MyIndexName',
      params: SearchParams(
        query: 'george clo',
        hitsPerPage: 2,
        getRankingInfo: true,
      ),
    ),
  );
  print(searchResponse);

  /// Make multi search requests
  const params = SearchParams(query: 'van');
  final multiSearchResponse = await client.multiSearch(
    const MultiSearchRequest(
      requests: [
        SearchRequest(indexName: 'MyIndexName1', params: params),
        SearchRequest(indexName: 'MyIndexName2', params: params),
      ],
    ),
  );
  print(multiSearchResponse);

  /// Make facet search
  final facetsSearchResponse = await client.facetsSearch(
    const FacetSearchRequest(
      indexName: 'MyIndexName',
      facetName: 'categories',
      facetQuery: 'phone',
    ),
  );
  print(facetsSearchResponse);

  /// Make object request
  final objectResponse = await client.object(
    const ObjectRequest(
      indexName: 'MyIndexName',
      objectID: 'MyObjectID',
      attributes: ['email', 'name'],
    ),
  );
  print(objectResponse);

  /// Make objects request
  final objectsResponse = await client.objects(
    [
      const ObjectRequest(indexName: 'MyIndexName1', objectID: 'MyObjectID1'),
      const ObjectRequest(indexName: 'MyIndexName1', objectID: 'MyObjectID2'),
    ],
  );
  print(objectsResponse);

  /// Make browse request
  const request = SearchRequest(indexName: 'MyIndexName');
  final stream = client.browse(request);
  await for (final response in stream) {
    print(response);
  }
}
