# Algolia Dart API Client _Lite_

[![pub package](https://img.shields.io/pub/v/algolia_lite.svg)](https://pub.dev/packages/algolia_lite)
[![style: lint](https://img.shields.io/badge/style-lint-4BC0F5.svg)](https://pub.dev/packages/lint)

Dart API client to interact with Algolia, designed for client apps.

## ▶️ Getting Started

### 🔍 Search & Browse

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
const request = SearchRequest(
  indexName: 'MyIndexName',
  params: SearchParams(
    query: 'george clo',
    hitsPerPage: 2,
    getRankingInfo: true,
  ),
);
final response = await client.search(request);
```
</details>

<details>
<summary><strong>Search multiple indices</strong></summary>

```dart
const params = SearchParams(query: 'van');
const request = MultiSearchRequest(
  requests: [
    SearchRequest(indexName: 'MyIndexName1', params: params),
    SearchRequest(indexName: 'MyIndexName2', params: params),
  ],
);
final response = await client.multiSearch(request);
```
</details>

<details>
<summary><strong>Search for facet values</strong></summary>

```dart
const request = FacetSearchRequest(
  indexName: 'MyIndexName',
  facetName: 'categories',
  facetQuery: 'phone',
);
final response = await client.facetsSearch(request);
```
</details>

<details>
<summary><strong>Get object(s)</strong></summary>

```dart
const request = ObjectRequest(
  indexName: 'MyIndexName',
  objectID: 'MyObjectID',
  attributes: ['email', 'name'],
);
final response = await client.object(request);
```
```dart
const request = ObjectsRequest(
  requests: [
    ObjectRequest(indexName: 'MyIndexName1', objectID: 'MyObjectID1'),
    ObjectRequest(indexName: 'MyIndexName1', objectID: 'MyObjectID2'),
  ],
);
final response = await client.objects(request);
```
</details>

<details>
<summary><strong>Browse index</strong></summary>

```dart
const request = SearchRequest('MyIndexName');
final stream = client.browse(request);
await for (final response in stream) {
  print(response);
}
```
</details>

### 💡 Insights

Create `InsightsClient`:

```dart
final client = InsightsClient(
    applicationID: 'MyApplicationID',
    apiKey: 'MyApiKey',
);
```

<details>
<summary><strong>Send events</strong></summary>

```dart
const event = InsightEvent(
    eventType: EventType.click,
    eventName: 'Clicked Search Result',
    index: 'instant_search',
    userToken: 'anonymous-xxxxxx-xx-xxx-xxxxxx',
    queryID: '43b15df305339e827f0ac0bdc5ebcaa7',
    objectIDs: ['item'],
    positions: [1],
);
unawaited(client.sendEvents([event]));
```
</details>

## 📄 License

Algolia Dart API Client Lite is an open-sourced software licensed under the [MIT license](LICENSE.md).
**This is an unofficial library, it is not affiliated with nor endorsed by Algolia**. Contributions are welcome.

