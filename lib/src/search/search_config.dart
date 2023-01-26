import 'package:algolia_lite/src/configuration.dart';
import 'package:algolia_lite/src/host.dart';

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
      Host('$appID-dsn.algolia.net'),
      ...([
        Host('$appID-1.algolianet.com'),
        Host('$appID-2.algolianet.com'),
        Host('$appID-3.algolianet.com'),
      ]..shuffle()),
    ];
