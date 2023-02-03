import 'package:freezed_annotation/freezed_annotation.dart';

part 'object_response.freezed.dart';

/// Search response.
@freezed
class ObjectResponse with _$ObjectResponse {
  /// Create a [ObjectResponse] instance.
  @internal
  const factory ObjectResponse({
    /// Json response as [Map].
    required Map<String, dynamic> json,
  }) = _ObjectResponse;
}
