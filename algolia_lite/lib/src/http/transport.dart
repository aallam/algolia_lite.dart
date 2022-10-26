import 'dart:async';
import 'dart:convert';
import 'dart:io';

import '../exception.dart';
import '../request_options.dart';
import 'requester.dart';

/// Component to run http requests with retry logic.
abstract class Transport {
  /// Create [Transport] instance.
  factory Transport(
    Requester requester,
    Configuration config,
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
  _Transport(this.requester, this.config);

  final Requester requester;
  final Configuration config;

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
      final options = requestOptions ?? config.requestOptions;
      HttpRequest request = _buildRequest(host, path, method, body, options);
      try {
        final response = await requester.perform(request);
        return jsonDecode(utf8.decode(response.body)) as Map;
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
    RetryableHost host,
    String path,
    String method,
    String? body,
    RequestOptions requestOptions,
  ) {
    final headers = withCredentials(requestOptions.headers);
    final timeout = requestOptions.timeout * (host.retryCount + 1);
    final url = host.withPath(path);
    return HttpRequest(method, url, timeout, headers, body);
  }

  Iterable<RetryableHost> _callableHosts() {
    _expireHosts();
    final hosts = config.hosts;
    final upHosts = hosts.where((host) => host.isUp);
    if (upHosts.isNotEmpty) return upHosts;
    return hosts..forEach((host) => host.reset());
  }

  void _expireHosts() {
    for (RetryableHost host in config.hosts) {
      final delay = DateTime.now().difference(host.lastUpdated);
      if (delay > const Duration(minutes: 5)) host.reset();
    }
  }

  void dispose() {
    requester.close();
  }

  withCredentials(Map<String, String> headers) {
    headers['X-Algolia-Application-Id'] = config.applicationID;
    headers['X-Algolia-API-Key'] = config.apiKey;
  }
}

class Configuration {
  Configuration(
      this.applicationID, this.apiKey, this.hosts, this.requestOptions);

  final String applicationID;
  final String apiKey;
  final List<RetryableHost> hosts;
  final RequestOptions requestOptions;

  @override
  String toString() {
    return 'Configuration{applicationID: $applicationID, apiKey: $apiKey, hosts: $hosts, options: $requestOptions}';
  }
}

class RetryableHost {
  RetryableHost(this.url);

  final String url;

  var isUp = false;
  var lastUpdated = DateTime.now();
  var retryCount = 0;

  void reset() {
    lastUpdated = DateTime.now();
    isUp = true;
    retryCount = 0;
  }

  void timedOut() {
    isUp = true;
    lastUpdated = DateTime.now();
    retryCount += 1;
  }

  void failed() {
    isUp = false;
    lastUpdated = DateTime.now();
  }

  String withPath(String path) => '$url$path';
}

class RetryStrategy {
  RetryStrategy(this.hosts);

  final List<RetryableHost> hosts;

  void _resetHosts() {
    for (RetryableHost host in hosts) {
      final delay = DateTime.now().difference(host.lastUpdated);
      if (delay > const Duration(minutes: 5)) host.reset();
    }
  }
}

List<RetryableHost> searchHostsOf(String appID) {
  return [
    RetryableHost('$appID-dsn.algolia.net'),
    RetryableHost('$appID.algolia.net'),
    ...([
      RetryableHost('$appID-1.algolianet.com'),
      RetryableHost('$appID-2.algolianet.com'),
      RetryableHost('$appID-3.algolianet.com'),
    ]..shuffle()),
  ];
}
