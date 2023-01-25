import 'package:algolia_lite/algolia_lite.dart';

void main() async {
  /// Create search client
  final client = SearchClient(
    applicationID: 'MyApplicationID',
    apiKey: 'MyApiKey',
  );

  /// Make search requests
  final params = {'query': 'van'};
  final requests = MultiSearchRequest(requests: [
    SearchRequest.create(indexName: 'MyIndexName1', params: params),
    SearchRequest.create(indexName: 'MyIndexName2', params: params),
  ]);
  final response = await client.multiSearch(requests);
  print(response);
}
