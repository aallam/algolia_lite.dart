import 'dart:typed_data';

import 'package:http/http.dart' as http;

import '../exception.dart';

/// This contract allows you to run http requests and get response.
abstract class HttpRequester {
  factory HttpRequester() => _HttpRequester();

  /// Run an http request and get the result.
  Future<HttpResponse> perform(HttpRequest request);

  /// Close underlying resources.
  void close();
}

/// Implementation of [HttpRequester].
class _HttpRequester implements HttpRequester {
  final _client = http.Client();

  @override
  Future<HttpResponse> perform(HttpRequest request) async {
    http.Request httpRequest = _buildRequest(request);
    final streamed = await _client.send(httpRequest).timeout(request.timeout);
    final response = await http.Response.fromStream(streamed);
    if (response.statusCode / 100 != 2) {
      throw AlgoliaApiException(response.statusCode, response.body);
    }
    return HttpResponse(response.statusCode, response.bodyBytes);
  }

  http.Request _buildRequest(HttpRequest request) {
    final uri = _buildUri(request);
    final httpRequest = http.Request(request.method, uri);
    if (request.headers != null) httpRequest.headers.addAll(request.headers!);
    if (request.body != null) httpRequest.body = request.body!;
    return httpRequest;
  }

  Uri _buildUri(HttpRequest request) => Uri(
        scheme: 'https',
        host: request.host,
        path: request.path,
        queryParameters: request.queryParameters,
      );

  @override
  void close() => _client.close();
}

/// Represents an Http request.
class HttpRequest {
  HttpRequest(
      {required this.method,
      required this.host,
      required this.path,
      required this.timeout,
      this.headers,
      this.body,
      required this.queryParameters});

  final String method;
  final String host;
  final String path;
  final Duration timeout;
  final Map<String, String>? headers;
  final String? body;
  final Map<String, String> queryParameters;

  @override
  String toString() =>
      'HttpRequest{method: $method, host: $host, timeout: $timeout, headers: $headers, body: $body, queryParams: $queryParameters}';
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
