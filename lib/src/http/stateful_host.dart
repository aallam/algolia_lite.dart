import '../host.dart';

class StatefulHost {
  StatefulHost(this.host);

  StatefulHost.create(String url, {String scheme = 'https'})
      : host = Host(url, scheme: scheme);

  final Host host;
  var isUp = true;
  var retryCount = 0;
  var lastUpdate = DateTime.now();

  void reset() {
    isUp = true;
    retryCount = 0;
    lastUpdate = DateTime.now();
  }

  void timedOut() {
    isUp = true;
    retryCount += 1;
    lastUpdate = DateTime.now();
  }

  void failed() {
    isUp = false;
    lastUpdate = DateTime.now();
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StatefulHost &&
          runtimeType == other.runtimeType &&
          host == other.host &&
          isUp == other.isUp &&
          lastUpdate == other.lastUpdate &&
          retryCount == other.retryCount;

  @override
  int get hashCode =>
      host.hashCode ^ isUp.hashCode ^ lastUpdate.hashCode ^ retryCount.hashCode;

  @override
  String toString() =>
      'StatefulHost{host: $host, isUp: $isUp, lastUpdate: $lastUpdate, retryCount: $retryCount}';
}
