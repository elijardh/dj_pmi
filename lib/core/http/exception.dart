import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';

class ClientException implements Exception {
  final String message;
  final String? prefix;
  final Map<String, dynamic>? cause;
  final String? statusCode;

  static const Map<DioExceptionType, String> _defaultErrorMessages = {
    DioExceptionType.cancel: 'Request cancelled!',
    DioExceptionType.connectionError: 'Please check your network connection!',
    DioExceptionType.connectionTimeout: 'Network connection timed out!',
    DioExceptionType.unknown: 'An unexpected error occurred!',
  };

  // Method to get the error message from DioException
  static String _getMessageFromDioException(DioException? e) {
    if (e == null ||
        (e.message != null &&
            e.message!.toLowerCase().contains('server error'))) {
      return 'An unexpected error occurred.';
    }

    switch (e.type) {
      case DioExceptionType.badResponse:
        if ((e.response?.data?['errors']) is Map<String, dynamic> &&
            (e.response?.data?['errors'] as Map<String, dynamic>?) != null &&
            (e.response?.data?['errors'] as Map<String, dynamic>?)!
                .isNotEmpty) {
          return ((e.response?.data?['errors'] as Map<String, dynamic>?)
                      ?.values
                      .firstOrNull as List<dynamic>)
                  .firstOrNull ??
              'An unexpected error occurred.';
        } else if ((e.response?.data?['errors']) is List<dynamic>) {
          return e.response?.data?['message'] ??
              'An unexpected error occurred.';
        } else if (e.response?.data?['message'] == 'Unauthenticated.') {
          return 'Unauthenticated.';
        } else {
          return 'An unexpected error occurred.';
        }
      case DioExceptionType.cancel:
      case DioExceptionType.connectionError:
      case DioExceptionType.unknown:
        return _defaultErrorMessages[e.type]!;
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.connectionTimeout:
        return _defaultErrorMessages[DioExceptionType.connectionTimeout]!;
      default:
        return _getMessageFromSpecificError(e.error);
    }
  }

  // Method to get the error message from specific error types
  static String _getMessageFromSpecificError(Object? error) {
    switch (error.runtimeType) {
      case SocketException _:
        return 'Please check your network connection!';
      case HttpException _:
        return 'Network connection issue. Please try again later!';
      case TimeoutException _:
        return 'Network connection timed out!';
      default:
        return 'An unexpected error occurred.';
    }
  }

  ClientException({this.message = '', this.prefix, this.cause, this.statusCode});

  factory ClientException.fromResponse(Response response) {
    final data = response.data as Map<String, dynamic>;
    return ClientException(
        message: data['error'] ?? data['message'],
        prefix:
            "${response.requestOptions.path} ${response.requestOptions.method}");
  }

  factory ClientException.fromDioException(DioException? e) {
    final String message = _getMessageFromDioException(e);
    final String? statusCode = e?.response?.statusCode?.toString();

    return ClientException(
      message: message,
      statusCode: statusCode,
    );
  }

  @override
  String toString() {
    return '$prefix: $message';
  }
}
