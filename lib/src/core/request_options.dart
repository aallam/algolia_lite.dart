import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_options.freezed.dart';

/// Extra request parameters, headers and timeout.
/// Parameters set in the request option will override default parameter.
@freezed
class RequestOptions with _$RequestOptions {
  const factory RequestOptions({
    Map<String, String>? headers,
    Duration? timeout,
    Map<String, String>? queryParams,
  }) = _RequestOptions;
}
