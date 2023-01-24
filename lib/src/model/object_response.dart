import 'package:collection/collection.dart';
import 'package:meta/meta.dart';

/// Search response.
class ObjectResponse extends DelegatingMap<String, dynamic> {
  /// Json response as [Map].
  final Map<String, dynamic> json;

  /// Create a [ObjectResponse] instance.
  @internal
  const ObjectResponse(this.json) : super(json);
}
