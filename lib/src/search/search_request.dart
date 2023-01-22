typedef Params = Map<String, dynamic>;

class SearchRequest {
  final String indexName;
  final Map<String, dynamic>? params;

  SearchRequest({
    required this.indexName,
    this.params,
  });
}

class MultiSearchRequest {
  final List<SearchRequest> requests;
  final String strategy;

  MultiSearchRequest({
    required this.requests,
    this.strategy = 'none',
  });
}
