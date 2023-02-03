import 'package:freezed_annotation/freezed_annotation.dart';

part 'insight_event.freezed.dart';

part 'insight_event.g.dart';

/// Represents an insights event
/// [documentation](https://www.algolia.com/doc/rest-api/insights/#send-events)
@Freezed(toJson: true)
class InsightEvent with _$InsightEvent {
  /// Create [InsightEvent] instance.
  const factory InsightEvent({
    /// "click" "conversion" or "view"
    required EventType eventType,

    /// A user-defined string used to categorize events.
    required String eventName,

    /// Name of the targeted index.
    required String index,

    /// A user identifier. Depending if the user is logged-in or not, several
    /// strategies can be used from a sessionId to a technical identifier.
    /// You should always send pseudonymous or anonymous userTokens.
    required String userToken,

    /// Time of the event expressed in milliseconds since the Unix epoch.
    int? timestamp,

    /// Algolia queryID. This is required when an event is tied to a search.
    String? queryID,

    /// An array of index objectID. Limited to 20 objects. An event can’t have
    /// both objectIDs and filters at the same time.
    Iterable<String>? objectIDs,

    /// An array of filters. Limited to 10 filters.
    /// An event can’t have both objectIDs and filters at the same time.
    Iterable<String>? filters,

    ///Position of the click in the list of Algolia search results.
    ///This field is required if a queryID is provided. One position must be
    /// provided for each objectID.
    Iterable<int>? positions,
  }) = _InsightEvent;
}

@JsonEnum()
enum EventType { click, conversion, view }
