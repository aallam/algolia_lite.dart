import 'dart:async';

import 'package:algolia_lite/src/core/core.dart';
import 'package:algolia_lite/src/http/requester.dart';
import 'package:dio/dio.dart';
import 'package:logging/logging.dart';

final Logger _logger = Logger("AlgoliaLite");

/// Implementation of [Requester] using [http].
class DioRequester implements Requester {
  DioRequester(ClientConfig config)
      : _client = Dio(
          BaseOptions(
            headers: _defaultHeaders(config),
            connectTimeout: config.timeout.inMilliseconds,
          ),
        )..interceptors.add(
            LogInterceptor(
              requestBody: true,
              responseBody: true,
              logPrint: _logger.fine,
            ),
          );

  /// Inner http client.
  final Dio _client;

  @override
  Future<HttpResponse> perform(HttpRequest request) async {
    try {
      return await execute(request);
    } on DioError catch (e) {
      switch (e.type) {
        case DioErrorType.connectTimeout:
        case DioErrorType.sendTimeout:
        case DioErrorType.receiveTimeout:
          throw AlgoliaTimeoutException(e);
        case DioErrorType.response:
          throw AlgoliaApiException(e.response?.statusCode ?? 0, e.error);
        case DioErrorType.cancel:
        case DioErrorType.other:
          throw AlgoliaIOException(e);
      }
    }
  }

  Future<HttpResponse> execute(HttpRequest request) async {
    final response = await _client.requestUri<Map<String, dynamic>>(
      _buildUri(request),
      data: request.body,
      options: Options(
        method: request.method,
        sendTimeout: request.timeout.inMilliseconds,
      ),
    );
    return HttpResponse(response.statusCode, response.data);
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

Map<String, String> _defaultHeaders(ClientConfig config) => {
      'X-Algolia-Application-Id': config.applicationID,
      'X-Algolia-API-Key': config.apiKey,
      ...?config.headers,
    };
