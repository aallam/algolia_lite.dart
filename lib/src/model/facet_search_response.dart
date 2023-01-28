import 'package:meta/meta.dart';

/// Facet search response.
class FacetSearchResponse {
  /// Json response as [Map].
  final Map<String, dynamic> json;

  /// Create a [FacetSearchResponse] instance.
  @internal
  const FacetSearchResponse(this.json);
}
