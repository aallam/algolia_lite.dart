import 'package:algolia_lite/src/model/extension.dart';
import 'package:algolia_lite/src/model/object_response.dart';
import 'package:algolia_lite/src/search/encode.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'objects_response.g.dart';

@deserializable
class ObjectsResponse {
  @JsonKey(fromJson: objectsFromJson)
  final Iterable<ObjectResponse> results;

  const ObjectsResponse(this.results);

  @internal
  factory ObjectsResponse.fromJson(Map<String, dynamic> json) =>
      _$ObjectsResponseFromJson(json);
}
