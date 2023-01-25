import 'package:collection/collection.dart';
import 'package:meta/meta.dart';

/// Multi search response.
class MultiSearchResponse extends DelegatingMap {
  /// Json response as [Map].
  final Map json;

  /// Create a [MultiSearchResponse] instance.
  @internal
  const MultiSearchResponse(this.json) : super(json);
}
