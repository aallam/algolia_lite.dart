import 'package:algolia_lite/src/core/core.dart';
import 'package:algolia_lite/src/http/transport.dart';
import 'package:algolia_lite/src/insights/insights_client.dart';
import 'package:algolia_lite/src/insights/insights_config.dart';
import 'package:algolia_lite/src/model/insights/insight_event.dart';
import 'package:algolia_lite/src/model/insights/insights_request.dart';

class InsightsApiClient implements InsightsClient {
  InsightsApiClient(InsightsConfig config) : transport = HttpTransport(config);

  final HttpTransport transport;

  @override
  Future<void> sendEvents(
    Iterable<InsightEvent> events, [
    RequestOptions? requestOptions,
  ]) {
    final request = InsightsRequest(events: events);
    return transport.request(
      method: 'POST',
      path: '/1/events',
      body: request.toJson(),
      requestOptions: requestOptions,
    );
  }
}
