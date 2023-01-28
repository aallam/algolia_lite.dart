import 'package:algolia_lite/src/model/extension.dart';
import 'package:algolia_lite/src/model/object_response.dart';
import 'package:algolia_lite/src/search/encode.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'objects_response.g.dart';

@deserializable
class ObjectsResponse extends Equatable {
  /// List of objects.
  @JsonKey(fromJson: objectsFromJson)
  final Iterable<ObjectResponse> results;

  @internal
  const ObjectsResponse(this.results);

  @internal
  factory ObjectsResponse.fromJson(Map<String, dynamic> json) =>
      _$ObjectsResponseFromJson(json);

  @override
  List<Object?> get props => [results];
}
