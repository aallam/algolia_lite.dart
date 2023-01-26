import 'package:algolia_lite/src/host.dart';

class StatefulHost extends Host {
  StatefulHost(Host host) : super(host.url, scheme: host.scheme);

  StatefulHost.create(super.url, {super.scheme});

  bool isUp = true;
  int retryCount = 0;
  DateTime lastUpdate = DateTime.now();

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
  String toString() =>
      'StatefulHost{isUp: $isUp, retryCount: $retryCount, lastUpdate: $lastUpdate}';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      super == other &&
          other is StatefulHost &&
          runtimeType == other.runtimeType &&
          isUp == other.isUp &&
          retryCount == other.retryCount &&
          lastUpdate == other.lastUpdate;

  @override
  int get hashCode =>
      super.hashCode ^
      isUp.hashCode ^
      retryCount.hashCode ^
      lastUpdate.hashCode;
}
