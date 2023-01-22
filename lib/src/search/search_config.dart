import 'package:algolia_lite/src/http/configuration.dart';

class SearchConfig implements Configuration {
  @override
  final String applicationID;
  @override
  final String apiKey;
  @override
  final List<String>? hosts;
  @override
  final Map<String, String>? headers;
  @override
  final Duration timeout;

  const SearchConfig({
    required this.applicationID,
    required this.apiKey,
    this.hosts,
    this.headers,
    this.timeout = const Duration(seconds: 5),
  });
}
