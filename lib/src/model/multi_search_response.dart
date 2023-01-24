import 'package:collection/collection.dart';
import 'package:meta/meta.dart';

/// Multi search response.
class MultiSearchResponse extends DelegatingMap<String, dynamic> {
  /// Json response as [Map].
  final Map<String, dynamic> json;

  /// Create a [MultiSearchResponse] instance.
  @internal
  const MultiSearchResponse(this.json) : super(json);
}
