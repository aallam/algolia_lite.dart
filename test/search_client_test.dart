import 'package:algolia_lite/algolia_lite.dart';
import 'package:test/test.dart';

void main() {
  test('Search', () async {
    final config = SearchConfig(
        applicationID: 'latency', apiKey: 'afc3dd66dd1293e2e2736a5a51b05c0a');
    final client = SearchClient(config);
    final req = SearchRequest(
      indexName: 'instant_search',
      params: {'query': 'a'},
    );
    final res = await client.search(req);
    print(res);
  });

  test('MultiSearch', () async {
    final config = SearchConfig(
        applicationID: 'latency', apiKey: 'afc3dd66dd1293e2e2736a5a51b05c0a');
    final client = SearchClient(config);
    final req = MultiSearchRequest(requests: [
      SearchRequest(
        indexName: 'instant_search',
        params: {'query': 'a'},
      )
    ]);
    final res = await client.multiSearch(req);
    print(res);
  });
}
