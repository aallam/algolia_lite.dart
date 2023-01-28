import 'package:algolia_lite/algolia_lite.dart';
import 'package:algolia_lite/src/model/extension.dart';

part 'objects_request.g.dart';

@serializable
class ObjectsRequest {
  final Iterable<ObjectRequest> requests;

  const ObjectsRequest(this.requests);

  Map<String, dynamic> toJson() => _$ObjectsRequestToJson(this);
}
