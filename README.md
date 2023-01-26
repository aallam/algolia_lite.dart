# Algolia Dart API Client _Lite_

[![pub package](https://img.shields.io/pub/v/algolia_lite.svg)](https://pub.dev/packages/algolia_lite)
[![style: lint](https://img.shields.io/badge/style-lint-4BC0F5.svg)](https://pub.dev/packages/lint)

Dart API client to interact with Algolia, designed for client apps.

## 💡Getting Started

Create an instance of `SearchClient`:

```dart
var client = SearchClient(
  applicationID: 'MyApplicationID',
  apiKey: 'MyApiKey',
);
```

Use your search client instance to make API requests:

<details>
<summary><strong>Search index</strong></summary>

```dart
var request = SearchRequest.create(
  indexName: 'MyIndexName',
  params: {'query': 'phone'},
);
var response = await client.search(request);
```
</details>

<details>
<summary><strong>Search multiple indices</strong></summary>

```dart
var request = MultiSearchRequest(requests: 
  [
    SearchRequest.create(indexName: 'MyIndexName1', params: params),
    SearchRequest.create(indexName: 'MyIndexName2', params: params),
  ],
);
var response = await client.multiSearch(request);
```
</details>

<details>
<summary><strong>Search for facet values</strong></summary>

```dart
var request = FacetSearchRequest(
  indexName: 'MyIndexName',
  facetName: 'categories',
  facetQuery: 'phone',
);
var response = await client.facetsSearch(request);
```
</details>

<details>
<summary><strong>Get object(s)</strong></summary>

```dart
var request = ObjectRequest(
  indexName: 'MyIndexName',
  objectID: 'MyObjectID',
  attributes: ['email', 'name'],
);
var objectResponse = await client.object(request);
```
```dart
final response = await client.objects(
    [
      ObjectRequest(indexName: 'MyIndexName1', objectID: 'MyObjectID1'),
      ObjectRequest(indexName: 'MyIndexName1', objectID: 'MyObjectID2'),
    ],
);
```
</details>

<details>
<summary><strong>Browse index</strong></summary>

```dart
var request = SearchRequest('MyIndexName');
var stream = client.browse(request);
await for (var response in stream) {
  print(response);
}
```
</details>

## 📄 License

Algolia Dart API Client Lite is an open-sourced software licensed under the [MIT license](LICENSE.md).
**This is an unofficial library, it is not affiliated with nor endorsed by Algolia**. Contributions are welcome.

