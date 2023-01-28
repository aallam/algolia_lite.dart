import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

/// Facet search response.
class FacetSearchResponse extends Equatable {
  /// Json response as [Map].
  final Map<String, dynamic> json;

  /// Create a [FacetSearchResponse] instance.
  @internal
  const FacetSearchResponse(this.json);

  @override
  List<Object?> get props => [json];
}
