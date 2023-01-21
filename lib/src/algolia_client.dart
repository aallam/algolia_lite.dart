import 'package:algolia_lite/src/configuration.dart';
import 'package:algolia_lite/src/http/requester.dart';
import 'package:algolia_lite/src/http/transport.dart';

class SearchClient {
  SearchClient(SearchConfig config)
      : transport = Transport(HttpRequester(), config);

  final Transport transport;

  Future<Map> search(String indexName, String query) {
    return transport.request(
      method: 'POST',
      path: '/1/indexes/$indexName/query',
      body: '{ "params": "query=$query" }',
    );
  }
}
