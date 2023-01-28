import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

/// Search response.
class ObjectResponse extends Equatable {
  /// Json response as [Map].
  final Map<String, dynamic> json;

  /// Create a [ObjectResponse] instance.
  @internal
  const ObjectResponse(this.json);

  @override
  List<Object?> get props => [json];
}
