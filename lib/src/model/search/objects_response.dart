// ignore_for_file: invalid_annotation_target

import 'package:algolia_lite/src/model/search/object_response.dart';
import 'package:algolia_lite/src/search/encode.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'objects_response.freezed.dart';

part 'objects_response.g.dart';

@Freezed(toJson: false)
class ObjectsResponse with _$ObjectsResponse {
  @internal
  const factory ObjectsResponse({
    /// List of objects.
    @JsonKey(fromJson: objectsFromJson)
        required Iterable<ObjectResponse> results,
  }) = _ObjectsResponse;

  @internal
  factory ObjectsResponse.fromJson(Map<String, dynamic> json) =>
      _$ObjectsResponseFromJson(json);
}
