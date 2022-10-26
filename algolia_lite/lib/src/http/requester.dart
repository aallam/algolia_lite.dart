import 'dart:typed_data';

/// This contract allows you to run http requests and get response.
abstract class Requester {
  /// Run an http request and get the result.
  Future<HttpResponse> perform(HttpRequest request);

  /// Close underlying resources.
  void close();
}

/// Http
class HttpRequest {
  HttpRequest(this.method, this.url, this.timeout, this.headers, this.body);

  final String method;
  final String url;
  final Duration timeout;
  final Map<String, String>? headers;
  final String? body;

  @override
  String toString() {
    return 'HttpRequest{method: $method, '
        'url: $url, '
        'timeout: $timeout, '
        'headers: $headers, '
        'body: $body'
        '}';
  }
}

class HttpResponse {
  HttpResponse(this.statusCode, this.body);

  final int statusCode;
  final Uint8List body;

  @override
  String toString() {
    return 'HttpResponse{statusCode: $statusCode, body: $body}';
  }
}
