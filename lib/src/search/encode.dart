import 'dart:convert';

import 'search_request.dart';

/// URL encode [path] string.
String encodePath(String path) => Uri(path: path).path;

extension SearchRequestEncode on SearchRequest {
  String encodedParams() => Uri(queryParameters: params).query;

  String encode() {
    final encoded = encodedParams();
    final data = {'params': encoded};
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
