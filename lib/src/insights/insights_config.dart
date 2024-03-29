import 'package:algolia_lite/src/core/core.dart';

class InsightsConfig implements ClientConfig {
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

  InsightsConfig({
    required this.applicationID,
    required this.apiKey,
    Iterable<Host>? hosts,
    this.headers,
    this.timeout = const Duration(seconds: 5),
  }) : hosts = hosts ?? const [Host(url: 'insights.algolia.io')];
}
