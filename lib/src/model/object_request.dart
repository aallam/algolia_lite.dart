import 'package:algolia_lite/src/model/extension.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'object_request.g.dart';

/// Represents an object search request.
@serializable
class ObjectRequest extends Equatable {
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

  @override
  @ignore
  List<Object?> get props => [indexName, objectID, attributes];

  @override
  @ignore
  // ignore: hash_and_equals
  int get hashCode => super.hashCode;

  @override
  @ignore
  bool? get stringify => super.stringify;
}
