import 'package:algolia_lite/algolia_lite.dart';
import 'package:test/test.dart';
import 'package:ulid4d/ulid4d.dart';

void main() {
  test('Send events', () async {
    final client = InsightsClient(
      applicationID: 'latency',
      apiKey: 'afc3dd66dd1293e2e2736a5a51b05c0a',
    );
    final userToken = ULID.randomULID();
    await client.sendEvents(
      [
        InsightEvent(
          eventType: EventType.click,
          eventName: 'Clicked Search Result',
          index: 'instant_search',
          userToken: userToken,
          queryID: '43b15df305339e827f0ac0bdc5ebcaa7',
          objectIDs: ['item'],
          positions: [1],
        )
      ],
    );
  });
}
