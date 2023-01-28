import 'package:equatable/equatable.dart';

/// Extra request parameters, headers and timeout.
/// Parameters set in the request option will override default parameter.
class RequestOptions extends Equatable {
  final Map<String, String>? headers;
  final Duration? timeout;
  final Map<String, String>? queryParams;

  const RequestOptions({
    this.headers,
    this.timeout,
    this.queryParams,
  });

  @override
  List<Object?> get props => [headers, timeout, queryParams];
}
