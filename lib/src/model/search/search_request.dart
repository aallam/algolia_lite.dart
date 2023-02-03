// ignore_for_file: invalid_annotation_target

import 'package:algolia_lite/src/model/search/search_params.dart';
import 'package:algolia_lite/src/search/encode.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_request.freezed.dart';

part 'search_request.g.dart';

/// Represents a search request.
@Freezed(toJson: true)
class SearchRequest with _$SearchRequest {
  /// Create a [SearchRequest] instance.
  const factory SearchRequest({
    /// The index to query.
    required String indexName,

    /// Search parameters.
    @JsonKey(toJson: encodeParams) SearchParams? params,
  }) = _SearchRequest;
}
