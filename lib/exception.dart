class ChuksException implements Exception {
  final String? message;
  final String? errorCode;

  ChuksException({
    required this.message,
    required this.errorCode,
  });
}
