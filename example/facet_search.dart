import 'package:algolia_lite/algolia_lite.dart';

void main() async {
  /// Create search client
  final client = SearchClient(
    applicationID: 'MyApplicationID',
    apiKey: 'MyApiKey',
  );

  /// Make search request
  final request = FacetSearchRequest(
    indexName: 'MyIndexName',
    facetName: 'categories',
    facetQuery: 'phone',
  );
  final response = await client.facetsSearch(request);
  print(response);
}
