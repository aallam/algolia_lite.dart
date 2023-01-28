import 'package:algolia_lite/src/model/extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'insight_event.g.dart';

/// Represents an insights event
/// [documentation](https://www.algolia.com/doc/rest-api/insights/#send-events)
@serializable
class InsightEvent {
  /// "click" "conversion" or "view"
  final EventType eventType;

  /// A user-defined string used to categorize events.
  final String eventName;

  /// Name of the targeted index.
  final String index;

  /// A user identifier. Depending if the user is logged-in or not, several
  /// strategies can be used from a sessionId to a technical identifier.
  /// You should always send pseudonymous or anonymous userTokens.
  final String userToken;

  /// Time of the event expressed in milliseconds since the Unix epoch.
  final int? timestamp;

  /// Algolia queryID. This is required when an event is tied to a search.
  final String? queryID;

  /// An array of index objectID. Limited to 20 objects. An event can’t have
  /// both objectIDs and filters at the same time.
  final Iterable<String>? objectIDs;

  /// An array of filters. Limited to 10 filters.
  /// An event can’t have both objectIDs and filters at the same time.
  final Iterable<String>? filters;

  ///Position of the click in the list of Algolia search results.
  ///This field is required if a queryID is provided. One position must be
  /// provided for each objectID.
  final Iterable<int>? positions;

  /// Create [InsightEvent] instance.
  const InsightEvent({
    required this.eventType,
    required this.eventName,
    required this.index,
    required this.userToken,
    this.timestamp,
    this.queryID,
    this.objectIDs,
    this.filters,
    this.positions,
  });

  @internal
  Map<String, dynamic> toJson() => _$InsightEventToJson(this);
}

@JsonEnum()
enum EventType { click, conversion, view }
