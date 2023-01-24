import 'dart:convert';

import 'search_request.dart';

/// URL encode [path] string.
String encodePath(String path) => Uri(path: path).path;

extension SearchRequestEncode on SearchRequest {
  String encodedParams() => Uri(queryParameters: params).query;

  String encode([String? cursor]) {
    final encoded = encodedParams();
    final data = {
      'params': encoded,
      if (cursor != null) 'cursor': cursor,
    };
    return jsonEncode(data);
  }
}

extension MultiSearchRequestEncode on MultiSearchRequest {
  String encode() {
    final data = {
      'requests': requests
          .map((request) => {
                'indexName': request.indexName,
                'params': request.encodedParams(),
              })
          .toList(),
      'strategy': strategy
    };
    return jsonEncode(data);
  }
}

extension FacetSearchRequestEncode on FacetSearchRequest {
  String encode() {
    final data = {
      'params': Uri(queryParameters: params).query,
      if (facetQuery != null) 'facetQuery': facetQuery,
      if (maxFacetHits != null) 'maxFacetHits': maxFacetHits,
    };
    return jsonEncode(data);
  }
}

extension ObjectsRequestEncode on ObjectsRequest {
  String encode() {
    final data = {
      'requests': requests.map((request) => request.toJson()).toList(),
    };
    return jsonEncode(data);
  }
}

extension ObjectRequestEncode on ObjectRequest {
  Map<String, dynamic> toJson() {
    return {
      'indexName': indexName,
      'objectID': objectID,
      if (attributesToRetrieve != null) 'maxFacetHits': attributesToRetrieve,
    };
  }
}
