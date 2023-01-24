import 'dart:async';
import 'dart:io';

import '../exception.dart';
import '../host.dart';
import '../request_options.dart';
import '../configuration.dart';
import 'decoder.dart';
import 'requester.dart';
import 'stateful_host.dart';

/// Component to run http requests with retry logic.
abstract class HttpTransport {
  /// Create [HttpTransport] instance.
  factory HttpTransport.create(
    Configuration config,
    Requester requester,
  ) =>
      _HttpTransport(requester, config);

  factory HttpTransport(
    Configuration config,
  ) =>
      _HttpTransport(Requester(), config);

  /// Run an request and get a response.
  Future<Map<String, dynamic>> request({
    required String method,
    required String path,
    RequestOptions? requestOptions,
    String? body,
  });
}

/// Implementation of [HttpTransport].
class _HttpTransport implements HttpTransport {
  _HttpTransport(this.requester, this.config)
      : hosts = (config.hosts?.isEmpty ?? true)
            ? _searchHostsOfApp(config.applicationID)
            : _customSearchHostsOf(config.hosts!);

  final Requester requester;
  final Configuration config;
  final Iterable<StatefulHost> hosts;

  @override
  Future<Map<String, dynamic>> request({
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
    final Map<String, String> headers = {
      ..._credentialsHeaders(),
      ...?config.headers,
      ...?requestOptions?.headers,
    };
    final Map<String, String> queryParams = {
      ..._defaultQueryParams(),
      ...?requestOptions?.queryParams,
    };
    final baseTimeout = (requestOptions?.timeout ?? config.timeout);
    final timeout = baseTimeout * (host.retryCount + 1);
    return HttpRequest(
      method: method,
      host: host.host,
      path: path,
      timeout: timeout,
      headers: headers,
      body: body,
      queryParameters: queryParams,
    );
  }

  Map<String, String> _credentialsHeaders() => {
        'X-Algolia-Application-Id': config.applicationID,
        'X-Algolia-API-Key': config.apiKey,
      };

  Map<String, String> _defaultQueryParams() =>
      const {'x-algolia-agent': 'algolia lite (0.0.1)'};

  void dispose() => requester.close();
}

Iterable<StatefulHost> _searchHostsOfApp(String appID) {
  return [
    StatefulHost.create('$appID-dsn.algolia.net'),
    StatefulHost.create('$appID.algolia.net'),
    ...([
      StatefulHost.create('$appID-1.algolianet.com'),
      StatefulHost.create('$appID-2.algolianet.com'),
      StatefulHost.create('$appID-3.algolianet.com'),
    ]..shuffle()),
  ];
}

List<StatefulHost> _customSearchHostsOf(List<Host> hosts) =>
    hosts.map((host) => StatefulHost(host)).toList();
