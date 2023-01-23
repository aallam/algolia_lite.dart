/// Algolia host.
class Host {
  /// Host protocol (i.e. `http`, `https`)
  final String scheme;

  /// Host url, without protocol.
  final String url;

  Host(this.url, {this.scheme = 'https'});

  @override
  String toString() => 'Host{protocol: $scheme, url: $url}';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Host &&
          runtimeType == other.runtimeType &&
          scheme == other.scheme &&
          url == other.url;

  @override
  int get hashCode => scheme.hashCode ^ url.hashCode;
}
