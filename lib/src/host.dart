import 'package:equatable/equatable.dart';

/// Algolia host.
class Host extends Equatable {
  /// Host protocol (i.e. `http`, `https`)
  final String scheme;

  /// Host url, without protocol.
  final String url;

  const Host(this.url, {this.scheme = 'https'});

  @override
  List<Object?> get props => [scheme, url];
}
