import 'package:freezed_annotation/freezed_annotation.dart';

part 'object_request.freezed.dart';

part 'object_request.g.dart';

/// Represents an object search request.
@Freezed(toJson: true)
class ObjectRequest with _$ObjectRequest {
  /// Create a [ObjectRequest] instance.
  const factory ObjectRequest({
    /// Name of the index containing the object
    required String indexName,

    /// ID of the object within that index
    required String objectID,

    /// List of attributes to retrieve. By default, all retrievable attributes
    /// are returned.
    List<String>? attributes,
  }) = _ObjectRequest;
}
