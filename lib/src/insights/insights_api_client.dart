import 'package:algolia_lite/src/http/transport.dart';
import 'package:algolia_lite/src/insights/insights_client.dart';
import 'package:algolia_lite/src/insights/insights_config.dart';
import 'package:algolia_lite/src/model/insight_event.dart';
import 'package:algolia_lite/src/model/insights_request.dart';

class InsightsApiClient implements InsightsClient {
  InsightsApiClient(InsightsConfig config) : transport = HttpTransport(config);

  final HttpTransport transport;

  @override
  Future<void> sendEvents(Iterable<InsightEvent> events) {
    return transport.request(
      method: 'POST',
      path: '/1/events',
      body: InsightsRequest(events).toJson(),
    );
  }
}
