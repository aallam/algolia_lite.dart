import 'package:http/http.dart' as http;

import '../exception.dart';
import 'requester.dart';

class HttpRequester extends http.BaseClient implements Requester {
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
    final url = Uri.parse(request.url);
    final httpRequest = http.Request(request.method, url);
    if (request.headers != null) httpRequest.headers.addAll(request.headers!);
    if (request.body != null) httpRequest.body = request.body!;
    return httpRequest;
  }

  @override
  void close() {
    _client.close();
  }
}
