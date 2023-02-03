// ignore_for_file: invalid_annotation_target

import 'package:algolia_lite/src/model/search/search_request.dart';
import 'package:algolia_lite/src/search/encode.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'multi_search_request.freezed.dart';

part 'multi_search_request.g.dart';

/// Represents a multi search request.
@Freezed(toJson: true)
class MultiSearchRequest with _$MultiSearchRequest {
  /// Create a [MultiSearchRequest] instance.
  const factory MultiSearchRequest({
    /// A list of search requests.
    @JsonKey(toJson: requestsToJson) required Iterable<SearchRequest> requests,

    /// Allows optimizing execution of the queries.
    /// The following values are allowed: `none` and `stopIfEnoughMatches`.
    @Default('none') String strategy,
  }) = _MultiSearchRequest;
}
