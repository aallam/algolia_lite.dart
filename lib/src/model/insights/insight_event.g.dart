// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'insight_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$$_InsightEventToJson(_$_InsightEvent instance) {
  final val = <String, dynamic>{
    'eventType': _$EventTypeEnumMap[instance.eventType]!,
    'eventName': instance.eventName,
    'index': instance.index,
    'userToken': instance.userToken,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('timestamp', instance.timestamp);
  writeNotNull('queryID', instance.queryID);
  writeNotNull('objectIDs', instance.objectIDs?.toList());
  writeNotNull('filters', instance.filters?.toList());
  writeNotNull('positions', instance.positions?.toList());
  return val;
}

const _$EventTypeEnumMap = {
  EventType.click: 'click',
  EventType.conversion: 'conversion',
  EventType.view: 'view',
};
