import 'package:algolia_lite/src/model/insights/insight_event.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'insights_request.freezed.dart';

part 'insights_request.g.dart';

@Freezed(toJson: true)
class InsightsRequest with _$InsightsRequest {
  /// Create [InsightsRequest] instance.
  const factory InsightsRequest({
    /// Insight events list.
    required Iterable<InsightEvent> events,
  }) = _InsightsRequest;
}
