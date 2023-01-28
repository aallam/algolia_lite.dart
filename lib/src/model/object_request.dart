import 'package:equatable/equatable.dart';

/// Represents an object search request.
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

  @override
  List<Object?> get props => [indexName, objectID, attributes];
}
