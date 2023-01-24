import 'package:collection/collection.dart';
import 'package:meta/meta.dart';

/// Facet search response.
class FacetSearchResponse extends DelegatingMap<String, dynamic> {
  /// Json response as [Map].
  final Map<String, dynamic> json;

  /// Create a [FacetSearchResponse] instance.
  @internal
  const FacetSearchResponse(this.json) : super(json);
}
