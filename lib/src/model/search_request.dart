import 'package:algolia_lite/src/model/extension.dart';
import 'package:algolia_lite/src/model/search_params.dart';
import 'package:algolia_lite/src/search/encode.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'search_request.g.dart';

/// Represents a search request.
@serializable
class SearchRequest {
  /// The index to query.
  final String indexName;

  /// Search parameters.
  @JsonKey(toJson: encodeParams)
  final SearchParams? params;

  /// Create a [SearchRequest] instance.
  const SearchRequest({
    required this.indexName,
    this.params,
  });

  @internal
  Map<String, dynamic> toJson() => _$SearchRequestToJson(this);
}
