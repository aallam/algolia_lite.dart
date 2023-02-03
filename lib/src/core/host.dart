import 'package:freezed_annotation/freezed_annotation.dart';

part 'host.freezed.dart';

/// Algolia host.
@freezed
class Host with _$Host {
  const factory Host({
    /// Host protocol (i.e. `http`, `https`)
    @Default('https') String scheme,

    /// Host url, without protocol.
    required String? url,
  }) = _Host;
}
