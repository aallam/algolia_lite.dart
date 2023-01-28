import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

/// Multi search response.
class MultiSearchResponse extends Equatable {
  /// Json response as [Map].
  final Map<String, dynamic> json;

  /// Create a [MultiSearchResponse] instance.
  @internal
  const MultiSearchResponse(this.json);

  @override
  List<Object?> get props => [json];
}
