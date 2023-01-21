class SearchConfig {
  SearchConfig({
    required this.applicationID,
    required this.apiKey,
    this.hosts,
    this.headers,
    this.timeout = const Duration(seconds: 5),
  });

  final String applicationID;
  final String apiKey;
  final List<String>? hosts;
  final Map<String, String>? headers;
  final Duration timeout;
}
