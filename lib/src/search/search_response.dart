import 'package:collection/collection.dart';
import 'package:meta/meta.dart';

/// Search response.
class SearchResponse extends DelegatingMap<String, dynamic> {
  /// Json response as [Map].
  final Map<String, dynamic> json;

  /// Create a [SearchResponse] instance.
  @internal
  const SearchResponse(this.json) : super(json);
}

/// Multi search response.
class MultiSearchResponse extends DelegatingMap<String, dynamic> {
  /// Json response as [Map].
  final Map<String, dynamic> json;

  /// Create a [MultiSearchResponse] instance.
  @internal
  const MultiSearchResponse(this.json) : super(json);
}

/// Facet search response.
class FacetSearchResponse extends DelegatingMap<String, dynamic> {
  /// Json response as [Map].
  final Map<String, dynamic> json;

  /// Create a [FacetSearchResponse] instance.
  @internal
  const FacetSearchResponse(this.json) : super(json);
}

/// Browse response.
class BrowseResponse extends DelegatingMap<String, dynamic> {
  /// Json response as [Map].
  final Map<String, dynamic> json;

  /// Create a [BrowseResponse] instance.
  @internal
  const BrowseResponse(this.json) : super(json);
}
