import 'package:freezed_annotation/freezed_annotation.dart';

part 'facet_search_response.freezed.dart';

/// Facet search response.
@freezed
class FacetSearchResponse with _$FacetSearchResponse {
  /// Create a [FacetSearchResponse] instance.
  @internal
  const factory FacetSearchResponse({
    /// Json response as [Map].
    required Map<String, dynamic> json,
  }) = _FacetSearchResponse;
}
