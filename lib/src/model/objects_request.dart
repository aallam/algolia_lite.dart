import 'package:algolia_lite/algolia_lite.dart';
import 'package:algolia_lite/src/model/extension.dart';
import 'package:meta/meta.dart';

part 'objects_request.g.dart';

@serializable
class ObjectsRequest {
  /// List of object requests.
  final Iterable<ObjectRequest> requests;

  /// Create [ObjectRequest] instance.
  const ObjectsRequest({required this.requests});

  @internal
  Map<String, dynamic> toJson() => _$ObjectsRequestToJson(this);
}
