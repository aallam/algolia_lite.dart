import 'package:algolia_lite/src/search/encode.dart';

import '../http/transport.dart';
import 'search_config.dart';
import 'search_request.dart';

class SearchClient {
  SearchClient(SearchConfig config) : transport = HttpTransport(config);

  final HttpTransport transport;

  Future<Map> search(SearchRequest request) {
    return transport.request(
      method: 'POST',
      path: '/1/indexes/${request.indexName}/query',
      body: request.encode(),
    );
  }

  Future<Map> multiSearch(MultiSearchRequest request) {
    return transport.request(
      method: 'POST',
      path: '/1/indexes/*/queries',
      body: request.encode(),
    );
  }
}
