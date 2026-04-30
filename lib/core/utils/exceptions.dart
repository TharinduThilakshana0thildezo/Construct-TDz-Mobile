import 'package:firebase_core/firebase_core.dart';

/// Custom exception hierarchy for the app
abstract class AppException implements Exception {
  AppException({
    required this.message,
    required this.code,
    this.originalException,
  });
  final String message;
  final String code;
  final dynamic originalException;

  @override
  String toString() => 'AppException[$code]: $message';
}

class NetworkException extends AppException {
  NetworkException({
    required super.message,
    super.code = 'NETWORK_ERROR',
    super.originalException,
  });
}

class AppFirebaseException extends AppException {
  AppFirebaseException({
    required super.message,
    super.code = 'FIREBASE_ERROR',
    super.originalException,
  });
}

class AuthenticationException extends AppException {
  AuthenticationException({
    required super.message,
    super.code = 'AUTH_ERROR',
    super.originalException,
  });
}

class ValidationException extends AppException {
  ValidationException({
    required super.message,
    super.code = 'VALIDATION_ERROR',
    super.originalException,
  });
}

class PaymentException extends AppException {
  PaymentException({
    required super.message,
    super.code = 'PAYMENT_ERROR',
    super.originalException,
  });
}

class CacheException extends AppException {
  CacheException({
    required super.message,
    super.code = 'CACHE_ERROR',
    super.originalException,
  });
}

class UnknownException extends AppException {
  UnknownException({
    required super.message,
    super.code = 'UNKNOWN_ERROR',
    super.originalException,
  });
}

/// Error handling utility
class ErrorHandler {
  static AppException handleException(dynamic error) {
    if (error is AppException) return error;

    if (error is FirebaseException) {
      return AppFirebaseException(
        message: error.message ?? 'Firebase operation failed',
        code: error.code,
        originalException: error,
      );
    }

    return UnknownException(
      message: error.toString(),
      originalException: error,
    );
  }

  static String getUserFriendlyMessage(AppException exception) {
    switch (exception.code) {
      case 'NETWORK_ERROR':
        return 'Network connection failed. Please check your internet.';
      case 'AUTH_ERROR':
        return 'Authentication failed. Please log in again.';
      case 'VALIDATION_ERROR':
        return exception.message;
      case 'PAYMENT_ERROR':
        return 'Payment processing failed. Please try again.';
      case 'FIREBASE_ERROR':
        return 'Database operation failed. Please try again.';
      case 'CACHE_ERROR':
        return 'Failed to load cached data.';
      default:
        return 'Something went wrong. Please try again later.';
    }
  }
}
