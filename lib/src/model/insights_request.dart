import 'package:algolia_lite/src/model/extension.dart';
import 'package:algolia_lite/src/model/insight_event.dart';

part 'insights_request.g.dart';

@serializable
class InsightsRequest {
  final Iterable<InsightEvent> events;

  const InsightsRequest(this.events);

  Map<String, dynamic> toJson() => _$InsightsRequestToJson(this);
}
