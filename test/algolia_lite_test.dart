import 'package:algolia_lite/src/algolia_client.dart';
import 'package:algolia_lite/src/configuration.dart';
import 'package:test/test.dart';

void main() {
  test('Search', () async {
    final config = SearchConfig(
        applicationID: 'latency', apiKey: 'afc3dd66dd1293e2e2736a5a51b05c0a');
    final client = SearchClient(config);
    final res = await client.search('instant_search', 'a');
    print(res);
  });
}
