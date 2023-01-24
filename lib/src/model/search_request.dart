import 'package:collection/collection.dart';

/// Represents a search request.
class SearchRequest extends DelegatingMap<String, dynamic> {
  /// The index to query.
  final String indexName;

  /// [Search parameters](https://www.algolia.com/doc/api-reference/search-api-parameters/).
  final Map<String, dynamic> params;

  /// Create a [SearchRequest] instance.
  SearchRequest(String indexName)
      : this.create(indexName: indexName, params: {});

  /// Create a [SearchRequest] instance.
  SearchRequest.create({
    required this.indexName,
    required this.params,
  }) : super(params);
}
