import 'dart:developer' as developer;
import 'package:dio/dio.dart';

/// User-friendly error handler
/// Converts technical errors into friendly messages
/// Logs technical details to console only (not shown to users)
class ErrorHandler {
  /// Convert any error to a user-friendly message
  /// Industry best practice: Never show stack traces or technical details to end users
  static String getUserFriendlyMessage(dynamic error) {
    // Log technical details to console (developers only)
    developer.log(
      'Error occurred: $error',
      name: 'ErrorHandler',
      error: error,
    );

    // Convert to user-friendly message
    if (error is DioException) {
      return _handleDioException(error);
    } else if (error is Exception) {
      return _handleGenericException(error);
    } else {
      return 'Something went wrong. Please try again.';
    }
  }

  /// Handle Dio-specific errors (network, timeout, etc.)
  static String _handleDioException(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return 'Connection timed out. Please check your internet connection.';

      case DioExceptionType.connectionError:
        return 'Unable to connect to server. Please check your internet connection.';

      case DioExceptionType.badResponse:
        final statusCode = error.response?.statusCode;
        if (statusCode != null) {
          switch (statusCode) {
            case 400:
              return 'Invalid request. Please try again.';
            case 401:
              return 'Session expired. Please log in again.';
            case 403:
              return 'Access denied. You don\'t have permission.';
            case 404:
              return 'Requested resource not found.';
            case 500:
            case 502:
            case 503:
              return 'Server error. Our team has been notified.';
            default:
              return 'Server error ($statusCode). Please try again.';
          }
        }
        return 'Server error. Please try again.';

      case DioExceptionType.cancel:
        return 'Request cancelled.';

      case DioExceptionType.badCertificate:
        return 'Security error. Please contact support.';

      case DioExceptionType.unknown:
      default:
        return 'Network error. Please check your connection.';
    }
  }

  /// Handle generic exceptions
  static String _handleGenericException(Exception error) {
    final message = error.toString();

    // Check for common patterns
    if (message.contains('SocketException') ||
        message.contains('NetworkException')) {
      return 'Network error. Please check your internet connection.';
    }

    if (message.contains('FormatException')) {
      return 'Data format error. Please try again.';
    }

    if (message.contains('TimeoutException')) {
      return 'Request timed out. Please try again.';
    }

    // Generic fallback
    return 'An error occurred. Please try again.';
  }

  /// Check if system is reachable (for status indicators)
  /// Returns true if error is recoverable/temporary
  static bool isRecoverableError(dynamic error) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.connectionError:
        case DioExceptionType.cancel:
          return true; // Temporary network issues
        case DioExceptionType.badResponse:
          final statusCode = error.response?.statusCode;
          return statusCode == 503 || statusCode == 504; // Service unavailable
        default:
          return false;
      }
    }
    return true; // Assume recoverable for unknown errors
  }
}
