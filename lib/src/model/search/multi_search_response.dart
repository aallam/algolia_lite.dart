import 'package:freezed_annotation/freezed_annotation.dart';

part 'multi_search_response.freezed.dart';

/// Multi search response.
@freezed
class MultiSearchResponse with _$MultiSearchResponse {
  /// Create a [MultiSearchResponse] instance.
  @internal
  const factory MultiSearchResponse({
    /// Json response as [Map].
    required Map<String, dynamic> json,
  }) = _MultiSearchResponse;
}
