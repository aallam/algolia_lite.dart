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
