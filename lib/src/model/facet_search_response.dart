import 'package:collection/collection.dart';
import 'package:meta/meta.dart';

/// Facet search response.
class FacetSearchResponse extends DelegatingMap {
  /// Json response as [Map].
  final Map json;

  /// Create a [FacetSearchResponse] instance.
  @internal
  const FacetSearchResponse(this.json) : super(json);
}
