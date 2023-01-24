import 'package:http/http.dart' as http;

import '../exception.dart';
import 'requester.dart';

/// Implementation of [Requester] using [http].
class HttpRequester implements Requester {
  HttpRequester() : _client = http.Client();

  final http.Client _client;

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
        scheme: request.host.scheme,
        host: request.host.url,
        path: request.path,
        queryParameters: request.queryParameters,
      );

  @override
  void close() => _client.close();
}
