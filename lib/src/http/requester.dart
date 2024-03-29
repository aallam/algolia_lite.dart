import 'package:algolia_lite/src/core/core.dart';
import 'package:algolia_lite/src/http/requester_dio.dart';

/// This contract allows you to run http requests and get response.
abstract class Requester {
  factory Requester(ClientConfig config) => DioRequester(config);

  /// Run an http request and get the result.
  Future<HttpResponse> perform(HttpRequest request);

  /// Close underlying resources.
  void close();
}

/// Represents an Http request.
class HttpRequest {
  HttpRequest({
    required this.method,
    required this.host,
    required this.path,
    required this.timeout,
    this.headers,
    this.body,
    required this.queryParameters,
  });

  final String method;
  final Host host;
  final String path;
  final Duration timeout;
  final Map<String, String>? headers;
  final dynamic body;
  final Map<String, String> queryParameters;

  @override
  String toString() =>
      'HttpRequest{method: $method, host: $host, timeout: $timeout, headers: $headers, body: $body, queryParams: $queryParameters}';
}

class HttpResponse {
  HttpResponse(this.statusCode, this.body);

  final int? statusCode;
  final Map<String, dynamic>? body;

  @override
  String toString() {
    return 'HttpResponse{statusCode: $statusCode, body: $body}';
  }
}
