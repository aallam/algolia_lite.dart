import 'package:algolia_lite/algolia_lite.dart';

void main() async {
  /// Create search client
  final client = SearchClient(
    applicationID: 'MyApplicationID',
    apiKey: 'MyApiKey',
  );

  /// Make search request
  final request = SearchRequest('MyIndexName');
  final stream = client.browse(request);
  await for (var response in stream) {
    print(response);
  }
}
