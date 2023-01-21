import 'dart:async';
import 'dart:io';

import '../configuration.dart';
import '../exception.dart';
import '../request_options.dart';
import 'decoder.dart';
import 'hosts.dart';
import 'requester.dart';

/// Component to run http requests with retry logic.
abstract class Transport {
  /// Create [Transport] instance.
  factory Transport(
    HttpRequester requester,
    SearchConfig config,
  ) =>
      _Transport(requester, config);

  /// Run an request and get a response.
  Future<Map> request({
    required String method,
    required String path,
    RequestOptions? requestOptions,
    String? body,
  });
}

/// Implementation of [Transport].
class _Transport implements Transport {
  _Transport(this.requester, this.config)
      : hosts = (config.hosts?.isEmpty ?? true)
            ? searchHostsOfApp(config.applicationID)
            : customSearchHostsOf(config.hosts!);

  final HttpRequester requester;
  final SearchConfig config;
  final List<StatefulHost> hosts;

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
      HttpRequest request =
          _buildRequest(host, path, method, body, requestOptions);
      try {
        final response = await requester.perform(request);
        return jsonDecode(response.body);
      } on TimeoutException catch (e) {
        host.timedOut();
        errors.add(e);
      } on IOException catch (e) {
        host.failed();
        errors.add(e);
      } on AlgoliaApiException catch (e) {
        if (e.httpStatusCode / 100 == 4) rethrow;
        host.failed();
        errors.add(e);
      }
    }

    throw UnreachableHostsException(errors);
  }

  HttpRequest _buildRequest(
    StatefulHost host,
    String path,
    String method,
    String? body,
    RequestOptions? requestOptions,
  ) {
    final headers = {
      'X-Algolia-Application-Id': config.applicationID,
      'X-Algolia-API-Key': config.apiKey,
    }
      ..addAll(config.headers ?? {})
      ..addAll(requestOptions?.headers ?? {});
    final baseTimeout = (requestOptions?.timeout ?? config.timeout);
    final timeout = baseTimeout * (host.retryCount + 1);
    final url = host.withPath(path);
    return HttpRequest(method, url, timeout, headers, body);
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

  void dispose() {
    requester.close();
  }
}
