/// Base class for exceptions
abstract class BaseException implements Exception {
  /// Internal default error message
  final String message;

  /// Optional original error message
  final String? cause;

  /// Optional custom data
  final dynamic data;

  final StackTrace? stackTrace;

  const BaseException({
    required this.message,
    this.cause,
    this.data,
    this.stackTrace,
  });
}
