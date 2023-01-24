import 'dart:async';
import 'dart:io';

import 'package:http/http.dart' as http;

import '../exception.dart';
import 'requester.dart';

/// Implementation of [Requester] using [http].
class HttpRequester implements Requester {
  /// Inner http client.
  final http.Client _client = http.Client();

  @override
  Future<HttpResponse> perform(HttpRequest request) async {
    try {
      final response = await execute(request);
      if (response.statusCode / 100 != 2) {
        throw AlgoliaApiException(response.statusCode, response.body);
      }
      return response;
    } on TimeoutException catch (e) {
      throw AlgoliaTimeoutException(e.message);
    } on IOException catch (e) {
      throw AlgoliaIOException(e);
    }
  }

  Future<HttpResponse> execute(HttpRequest request) async {
    http.Request httpRequest = _buildRequest(request);
    final streamed = await _client.send(httpRequest).timeout(request.timeout);
    final response = await http.Response.fromStream(streamed);
    return HttpResponse(response.statusCode, response.body);
  }

  http.Request _buildRequest(HttpRequest request) {
    final uri = _buildUri(request);
    final httpRequest = http.Request(request.method, uri);
    if (request.headers != null) httpRequest.headers.addAll(request.headers!);
    if (request.body != null) httpRequest.body = request.body!;
    return httpRequest;
  }

  Uri _buildUri(HttpRequest request) => Uri(
        scheme: request.host.scheme,
        host: request.host.url,
        path: request.path,
        queryParameters: request.queryParameters,
      );

  @override
  void close() => _client.close();
}
