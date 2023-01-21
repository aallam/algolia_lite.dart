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
class _HttpRequester extends http.BaseClient implements HttpRequester {
  final userAgent = "algolia lite (0.0.1)";
  final _client = http.Client();

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    request.headers['User-Agent'] = userAgent;
    return _client.send(request);
  }

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
    final url = request.url.startsWith('https://')
        ? request.url
        : 'https://${request.url}';
    final uri = Uri.parse(url);
    final httpRequest = http.Request(request.method, uri);
    if (request.headers != null) httpRequest.headers.addAll(request.headers!);
    if (request.body != null) httpRequest.body = request.body!;
    return httpRequest;
  }

  @override
  void close() {
    _client.close();
  }
}

/// Represents an Http request.
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
