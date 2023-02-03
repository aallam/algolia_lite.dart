import 'package:algolia_lite/algolia_lite.dart';

extension SearchRequestEncode on SearchRequest {
  /// Encodes Search request without indexName
  Map<String, dynamic> encode([String? cursor]) {
    final encoded = encodeParams(params);
    return {
      if (encoded != null) 'params': encoded,
      if (cursor != null) 'cursor': cursor,
    };
  }
}

/// High level function to encode [SearchParams] without index name.
String? encodeParams(SearchParams? params) => Uri(
      queryParameters:
          params?.toJson().map((key, value) => MapEntry(key, value.toString())),
    ).query;

/// Convert a list of requests to JSON.
Iterable<Map<String, dynamic>> requestsToJson(
  Iterable<SearchRequest> requests,
) =>
    requests.map((request) => request.toJson()).toList();

extension ObjectRequestEncode on ObjectRequest {
  /// Convert object request to query parameters.
  Map<String, String> toQueryParams() => Uri(
        queryParameters: toJson()
          ..remove('indexName')
          ..remove('objectID'),
      ).queryParameters;
}

/// Convert JSON to a list of object responses.
Iterable<ObjectResponse> objectsFromJson(List<dynamic> items) =>
    items.map((item) => ObjectResponse(json: item as Map<String, dynamic>));
