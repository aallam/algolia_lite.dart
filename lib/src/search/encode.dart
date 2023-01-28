import 'package:algolia_lite/algolia_lite.dart';
import 'package:algolia_lite/src/model/search_params.dart';

extension SearchRequestEncode on SearchRequest {
  Map encode([String? cursor]) {
    final encoded = params?.toQueryParams();
    return {
      if (encoded != null) 'params': encoded,
      if (cursor != null) 'cursor': cursor,
    };
  }
}

extension SearchParamsEncode on SearchParams {
  String toQueryParams() => Uri(
        queryParameters:
            toJson().map((key, value) => MapEntry(key, value.toString())),
      ).query;
}

String? encodeParams(SearchParams? params) => params?.toQueryParams();

Iterable<Map<String, dynamic>> requestsToJson(
  Iterable<SearchRequest> requests,
) =>
    requests.map(requestToJson).toList();

Map<String, dynamic> requestToJson(SearchRequest request) => request.toJson();

extension ObjectRequestEncode on ObjectRequest {
  Map<String, String> toQueryParams() => Uri(
        queryParameters: toJson()
          ..remove('indexName')
          ..remove('objectID'),
      ).queryParameters;
}

Iterable<ObjectResponse> objectsFromJson(List<dynamic> items) =>
    items.map((item) => ObjectResponse(item as Map<String, dynamic>));
