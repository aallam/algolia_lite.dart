// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$$_SearchRequestToJson(_$_SearchRequest instance) {
  final val = <String, dynamic>{
    'indexName': instance.indexName,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('params', encodeParams(instance.params));
  return val;
}
