import 'dart:convert';

import 'package:algolia_lite/src/model/insights_event.dart';

extension InsightsEventEncode on Iterable<InsightEvent> {
  String encode() {
    final json = {'events': map((event) => event.toJson()).toList()};
    return jsonEncode(json);
  }
}

extension InsightEventEncode on InsightEvent {
  Map<String, dynamic> toJson() => params;
}
