// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'facet_search_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$$_FacetSearchRequestToJson(
  _$_FacetSearchRequest instance,
) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('params', encodeParams(instance.params));
  writeNotNull('facetQuery', instance.facetQuery);
  writeNotNull('maxFacetHits', instance.maxFacetHits);
  return val;
}
