import 'package:meta/meta.dart';

/// Multi search response.
class MultiSearchResponse {
  /// Json response as [Map].
  final Map<String, dynamic> json;

  /// Create a [MultiSearchResponse] instance.
  @internal
  const MultiSearchResponse(this.json);
}
