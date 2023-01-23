import 'package:algolia_lite/src/http/stateful_host.dart';
import 'package:test/test.dart';

void main() {
  test('Reset', () {
    final host = StatefulHost.create('url')
      ..isUp = false
      ..retryCount = 1;
    host.reset();
    expect(host.isUp, true);
    expect(host.retryCount, 0);
  });

  test('Timed out', () {
    final host = StatefulHost.create('url')
      ..isUp = false
      ..retryCount = 0;
    host.timedOut();
    expect(host.isUp, true);
    expect(host.retryCount, 1);
  });

  test('Failed', () {
    final host = StatefulHost.create('url')
      ..isUp = true
      ..retryCount = 1;
    host.failed();
    expect(host.isUp, false);
    expect(host.retryCount, 1);
  });
}
