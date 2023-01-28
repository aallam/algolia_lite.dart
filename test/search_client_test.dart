import 'package:algolia_lite/algolia_lite.dart';
import 'package:test/test.dart';

void main() {
  group('Search', () {
    test('Single search request', () async {
      final client = SearchClient(
        applicationID: 'latency',
        apiKey: 'afc3dd66dd1293e2e2736a5a51b05c0a',
      );
      const req = SearchRequest(
        indexName: 'instant_search',
        params: SearchParams(
          query: 'a',
          page: 1,
          hitsPerPage: 10,
        ),
      );
      const options = RequestOptions(
        headers: {'X-Algolia-UserToken': 'algolia-lite-dart-test'},
      );
      final res = await client.search(req, options);
      expect(res.query, 'a');
      expect(res.page, 1);
      expect(res.hitsPerPage, 10);
    });

    test('Multi search request', () async {
      final client = SearchClient(
        applicationID: 'latency',
        apiKey: 'afc3dd66dd1293e2e2736a5a51b05c0a',
      );
      const req = MultiSearchRequest(
        requests: [
          SearchRequest(
            indexName: 'instant_search',
            params: SearchParams(query: 'a'),
          )
        ],
      );
      final res = await client.multiSearch(req);
      expect(res.json.isNotEmpty, true);
    });

    test('Facet search request', () async {
      final client = SearchClient(
        applicationID: 'latency',
        apiKey: 'afc3dd66dd1293e2e2736a5a51b05c0a',
      );
      const req = FacetSearchRequest(
        indexName: 'instant_search',
        facetName: 'categories',
        facetQuery: 'a',
      );
      final res = await client.facetsSearch(req);
      expect(res.json.isNotEmpty, true);
    });

    test('Object search', () async {
      final client = SearchClient(
        applicationID: 'latency',
        apiKey: 'afc3dd66dd1293e2e2736a5a51b05c0a',
      );
      const req = ObjectRequest(
        indexName: 'instant_search',
        objectID: '6443034',
        attributes: ['objectID'],
      );
      final res = await client.object(req);
      expect(res.json.isNotEmpty, true);
    });

    test('Objects search', () async {
      final client = SearchClient(
        applicationID: 'latency',
        apiKey: 'afc3dd66dd1293e2e2736a5a51b05c0a',
      );
      const reqs = ObjectsRequest(
        requests: [
          ObjectRequest(indexName: 'instant_search', objectID: '6443034'),
          ObjectRequest(indexName: 'instant_search', objectID: '4863102'),
        ],
      );
      final res = await client.objects(reqs);
      expect(res.results.isNotEmpty, true);
    });
  });

  test('Browse', () async {
    final client = SearchClient(
      applicationID: 'latency',
      apiKey: 'afc3dd66dd1293e2e2736a5a51b05c0a',
    );
    const req = SearchRequest(indexName: 'instant_search');
    final stream = client.browse(req);
    expect(stream, emitsInOrder([mayEmitMultiple(anything), emitsDone]));
  });
}
