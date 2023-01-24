import 'package:collection/collection.dart';
import 'package:meta/meta.dart';

/// Browse response.
class BrowseResponse extends DelegatingMap<String, dynamic> {
  /// Json response as [Map].
  final Map<String, dynamic> json;

  /// Create a [BrowseResponse] instance.
  @internal
  const BrowseResponse(this.json) : super(json);
}
