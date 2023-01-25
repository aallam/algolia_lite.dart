import 'package:collection/collection.dart';
import 'package:meta/meta.dart';

/// Browse response.
class BrowseResponse extends DelegatingMap {
  /// Json response as [Map].
  final Map json;

  /// Create a [BrowseResponse] instance.
  @internal
  const BrowseResponse(this.json) : super(json);
}
