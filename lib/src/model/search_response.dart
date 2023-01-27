import 'package:collection/collection.dart';
import 'package:meta/meta.dart';

/// Search response.
class SearchResponse extends DelegatingMap {
  /// Json response as [Map].
  final Map json;

  /// Create a [SearchResponse] instance.
  @internal
  const SearchResponse(this.json) : super(json);

}
