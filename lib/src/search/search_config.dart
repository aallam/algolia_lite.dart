import 'package:algolia_lite/src/core/core.dart';

/// Search client default configuration.
class SearchConfig implements ClientConfig {
  @override
  final String applicationID;
  @override
  final String apiKey;
  @override
  final Iterable<Host> hosts;
  @override
  final Map<String, String>? headers;
  @override
  final Duration timeout;

  SearchConfig({
    required this.applicationID,
    required this.apiKey,
    Iterable<Host>? hosts,
    this.headers,
    this.timeout = const Duration(seconds: 5),
  }) : hosts = hosts ?? _defaultHosts(applicationID);
}

Iterable<Host> _defaultHosts(String appID) => [
      Host(url: '$appID-dsn.algolia.net'),
      ...([
        Host(url: '$appID-1.algolianet.com'),
        Host(url: '$appID-2.algolianet.com'),
        Host(url: '$appID-3.algolianet.com'),
      ]..shuffle()),
    ];
