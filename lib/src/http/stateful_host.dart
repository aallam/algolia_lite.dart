import 'package:algolia_lite/src/host.dart';

class StatefulHost {
  StatefulHost(this.host);

  StatefulHost.create(
    String url, {
    String scheme = 'https',
  }) : this(Host(url, scheme: scheme));

  final Host host;
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
}
