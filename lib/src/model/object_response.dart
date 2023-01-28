import 'package:meta/meta.dart';

/// Search response.
class ObjectResponse {
  /// Json response as [Map].
  final Map<String, dynamic> json;

  /// Create a [ObjectResponse] instance.
  @internal
  const ObjectResponse(this.json);
}
