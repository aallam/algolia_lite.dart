class RequestOptions {
  final Map<String, String> headers;
  final Duration timeout;

  RequestOptions({
    this.headers = const {},
    this.timeout = const Duration(seconds: 5),
  });

  @override
  String toString() {
    return 'RequestOptions{headers: $headers, timeout: $timeout}';
  }
}
