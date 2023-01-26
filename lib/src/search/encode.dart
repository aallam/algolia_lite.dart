import 'dart:convert';

import 'package:algolia_lite/src/model/facet_search_request.dart';
import 'package:algolia_lite/src/model/multi_search_request.dart';
import 'package:algolia_lite/src/model/object_request.dart';
import 'package:algolia_lite/src/model/search_request.dart';

/// URL encode [path] string.
String encodePath(String path, [Map<String, dynamic>? queryParams]) =>
    Uri(path: path, queryParameters: queryParams).path;

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

extension ObjectRequestEncode on ObjectRequest {
  Map<String, dynamic>? queryParams() =>
      attributes != null ? {'attributes': attributes} : null;

  Map<String, dynamic> toJson() {
    return {
      'indexName': indexName,
      'objectID': objectID,
      if (attributes != null) 'maxFacetHits': attributes,
    };
  }
}

extension ObjectsRequestEncode on List<ObjectRequest> {
  String encode() {
    final data = {
      'requests': map((request) => request.toJson()).toList(),
    };
    return jsonEncode(data);
  }
}
