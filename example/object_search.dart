import 'package:algolia_lite/algolia_lite.dart';

void main() async {
  /// Create search client
  final client = SearchClient(
    applicationID: 'MyApplicationID',
    apiKey: 'MyApiKey',
  );

  /// Make search request
  final request = ObjectRequest(
    indexName: 'MyIndexName',
    objectID: 'MyObjectID',
    attributes: ['email', 'name'],
  );
  final object = await client.object(request);
  print(object);

  final objects = await client.objects(
    [
      ObjectRequest(indexName: 'MyIndexName1', objectID: 'MyObjectID1'),
      ObjectRequest(indexName: 'MyIndexName1', objectID: 'MyObjectID2'),
    ],
  );
  print(objects);
}
