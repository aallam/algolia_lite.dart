// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'object_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$ObjectRequestToJson(ObjectRequest instance) {
  final val = <String, dynamic>{
    'indexName': instance.indexName,
    'objectID': instance.objectID,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('attributes', instance.attributes);
  return val;
}
