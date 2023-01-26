import 'package:algolia_lite/src/insights/insights_api_client.dart';
import 'package:algolia_lite/src/insights/insights_config.dart';
import 'package:algolia_lite/src/model/insights_event.dart';

/// Client for Algolia Insights.
/// [documentation](https://www.algolia.com/doc/rest-api/insights/)
abstract class InsightsClient {
  /// Create a [InsightsClient] instance.
  factory InsightsClient({
    required String applicationID,
    required String apiKey,
  }) {
    final config = InsightsConfig(applicationID: applicationID, apiKey: apiKey);
    return InsightsApiClient(config);
  }

  /// Create a [InsightsClient] instance.
  factory InsightsClient.create(InsightsConfig config) =>
      InsightsApiClient(config);

  /// Send insight events.
  Future<void> sendEvents(Iterable<InsightEvent> events);
}
