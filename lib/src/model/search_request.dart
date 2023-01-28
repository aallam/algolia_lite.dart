import 'package:algolia_lite/src/model/extension.dart';
import 'package:algolia_lite/src/model/search_params.dart';
import 'package:algolia_lite/src/search/encode.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'search_request.g.dart';

/// Represents a search request.
@serializable
class SearchRequest extends Equatable {
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

  static Map<String, dynamic> toJsonMap(SearchRequest request) =>
      request.toJson();

  @override
  @ignore
  List<Object?> get props => [indexName, params];

  @override
  @ignore
  // ignore: hash_and_equals
  int get hashCode => super.hashCode;

  @override
  @ignore
  bool? get stringify => super.stringify;
}
