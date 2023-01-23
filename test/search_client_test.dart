import 'package:algolia_lite/algolia_lite.dart';
import 'package:test/test.dart';

void main() {
  test('Search', () async {
    final client = SearchClient.create(
      applicationID: 'latency',
      apiKey: 'afc3dd66dd1293e2e2736a5a51b05c0a',
    );
    final req = SearchRequest(
      indexName: 'instant_search',
      params: {'query': 'a'},
    );
    final res = await client.search(req);
    expect(res.isNotEmpty, true);
  });

  test('MultiSearch', () async {
    final client = SearchClient.create(
      applicationID: 'latency',
      apiKey: 'afc3dd66dd1293e2e2736a5a51b05c0a',
    );
    final req = MultiSearchRequest(requests: [
      SearchRequest(
        indexName: 'instant_search',
        params: {'query': 'a'},
      )
    ]);
    final res = await client.multiSearch(req);
    expect(res.isNotEmpty, true);
  });

  test('FacetSearch', () async {
    final client = SearchClient.create(
      applicationID: 'latency',
      apiKey: 'afc3dd66dd1293e2e2736a5a51b05c0a',
    );
    final req = FacetSearchRequest(
      indexName: 'instant_search',
      facetName: 'categories',
      facetQuery: 'a',
    );
    final res = await client.facetSearch(req);
    expect(res.isNotEmpty, true);
  });

  test('Browse', () async {
    final client = SearchClient.create(
      applicationID: 'latency',
      apiKey: 'afc3dd66dd1293e2e2736a5a51b05c0a',
    );
    final req = SearchRequest(indexName: 'instant_search');
    final res = await client.browse(req);
    expect(res['page'], 0);
    final res2 = await client.browse(req, res['cursor']);
    expect(res2['page'], 1);
  });
}
