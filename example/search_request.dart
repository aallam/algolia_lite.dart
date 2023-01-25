import 'package:algolia_lite/algolia_lite.dart';

void main() async {
  /// Create search client
  final client = SearchClient(
    applicationID: 'MyApplicationID',
    apiKey: 'MyApiKey',
  );

  /// Make search request
  final request = SearchRequest('MyIndexName')
    ..['query'] = 'george clo'
    ..['hitsPerPage'] = 2
    ..['getRankingInfo'] = 1;
  final response = await client.search(request);
  print(response);
}
