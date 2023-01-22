import 'dart:convert';

import 'search_request.dart';

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
