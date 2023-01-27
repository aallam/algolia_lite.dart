import 'dart:async';

import 'package:algolia_lite/src/configuration.dart';
import 'package:algolia_lite/src/exception.dart';
import 'package:algolia_lite/src/http/requester.dart';
import 'package:algolia_lite/src/http/stateful_host.dart';
import 'package:algolia_lite/src/request_options.dart';
import 'package:algolia_lite/src/version.dart';

/// Component to run http requests with retry logic.
abstract class HttpTransport {
  /// Create [HttpTransport] instance.
  factory HttpTransport(
    ClientConfig config,
  ) =>
      _HttpTransport(Requester(config), config);

  /// Create [HttpTransport] instance.
  factory HttpTransport.create(
    ClientConfig config,
    Requester requester,
  ) =>
      _HttpTransport(requester, config);

  /// Run an request and get a response.
  Future<Map> request({
    required String method,
    required String path,
    RequestOptions? requestOptions,
    String? body,
  });

  void dispose();
}

/// Implementation of [HttpTransport].
class _HttpTransport implements HttpTransport {
  _HttpTransport(this.requester, this.config)
      : hosts = config.hosts.map((host) => StatefulHost(host));

  final Requester requester;
  final ClientConfig config;
  final Iterable<StatefulHost> hosts;

  @override
  Future<Map> request({
    required String method,
    required String path,
    RequestOptions? requestOptions,
    String? body,
  }) async {
    final hosts = _callableHosts();
    final List errors = [];

    for (final host in hosts) {
      final request = _buildRequest(host, path, method, body, requestOptions);
      try {
        final response = await requester.perform(request);
        return response.body ?? const {};
      } on AlgoliaTimeoutException catch (e) {
        host.timedOut();
        errors.add(e);
      } on AlgoliaIOException catch (e) {
        host.failed();
        errors.add(e);
      } on AlgoliaApiException catch (e) {
        if (e.statusCode / 100 == 4) rethrow;
        host.failed();
        errors.add(e);
      }
    }

    throw UnreachableHostsException(errors);
  }

  Iterable<StatefulHost> _callableHosts() {
    _expireHosts();
    final upHosts = hosts.where((host) => host.isUp);
    if (upHosts.isNotEmpty) return upHosts;
    return hosts..forEach((host) => host.reset());
  }

  void _expireHosts() {
    for (final host in hosts) {
      final delay = DateTime.now().difference(host.lastUpdate);
      if (delay > const Duration(minutes: 5)) host.reset();
    }
  }

  HttpRequest _buildRequest(
    StatefulHost host,
    String path,
    String method,
    String? body,
    RequestOptions? requestOptions,
  ) {
    final Map<String, String> queryParams = {
      ..._defaultQueryParams(),
      ...?requestOptions?.queryParams,
    };
    final baseTimeout = requestOptions?.timeout ?? config.timeout;
    final timeout = baseTimeout * (host.retryCount + 1);
    return HttpRequest(
      method: method,
      host: host,
      path: path,
      timeout: timeout,
      headers: requestOptions?.headers,
      body: body,
      queryParameters: queryParams,
    );
  }

  Map<String, String> _defaultQueryParams() =>
      const {'x-algolia-agent': 'Algolia Lite for Dart ($packageVersion)'};

  @override
  void dispose() => requester.close();
}
