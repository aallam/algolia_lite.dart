import 'package:algolia_lite/src/model/extension.dart';
import 'package:meta/meta.dart';

part 'object_request.g.dart';

/// Represents an object search request.
@serializable
class ObjectRequest {
  /// Name of the index containing the object
  final String indexName;

  /// ID of the object within that index
  final String objectID;

  /// List of attributes to retrieve. By default, all retrievable attributes
  /// are returned.
  final List<String>? attributes;

  /// Create a [ObjectRequest] instance.
  const ObjectRequest({
    required this.indexName,
    required this.objectID,
    this.attributes,
  });

  @internal
  Map<String, dynamic> toJson() => _$ObjectRequestToJson(this);
}
