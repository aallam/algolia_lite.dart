import 'package:algolia_lite/src/model/extension.dart';
import 'package:algolia_lite/src/model/insight_event.dart';
import 'package:equatable/equatable.dart';

part 'insights_request.g.dart';

@serializable
class InsightsRequest extends Equatable {
  final Iterable<InsightEvent> events;

  const InsightsRequest(this.events);

  Map<String, dynamic> toJson() => _$InsightsRequestToJson(this);

  @override
  @ignore
  List<Object?> get props => [events];

  @override
  @ignore
  // ignore: hash_and_equals
  int get hashCode => super.hashCode;

  @override
  @ignore
  bool? get stringify => super.stringify;
}
