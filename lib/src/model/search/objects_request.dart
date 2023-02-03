import 'package:algolia_lite/src/model/search/object_request.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'objects_request.freezed.dart';

part 'objects_request.g.dart';

@Freezed(toJson: true)
class ObjectsRequest with _$ObjectsRequest {
  /// Create [ObjectRequest] instance.
  const factory ObjectsRequest({
    /// List of object requests.
    required Iterable<ObjectRequest> requests,
  }) = _ObjectsRequest;
}
