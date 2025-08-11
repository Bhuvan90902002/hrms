import 'dart:io';

import 'package:dio/dio.dart';

/// Custom exception from dio error
class AppException implements Exception {
  AppException({
    this.statusCode,
    this.code,
    this.message,
    this.data,
  });

  AppException.fromJson(Map<String, dynamic> json) {
    if (json['error'] != null) {
      final Map<String, dynamic> jsons = json['error'] as Map<String, dynamic>;
      code = jsons['code'] as String?;
      message = jsons['message'] as String?;
      if (jsons['data'] != null) {
        data = jsons['data'] as Map<String, dynamic>?;
      }
    }
  }

  int? statusCode;
  String? message;
  String? code;
  Map<String, dynamic>? data;

  @override
  String toString() {
    return message ?? 'Exception';
  }

  factory AppException.fromDioError(DioException dioException) {
    String message = "unknown_error";
    switch (dioException.type) {
      case DioExceptionType.badResponse:
        switch (dioException.response?.statusCode) {
          case 400:
            message = "badRequest";
          case 401:
            message = "unauthorized";
          case 403:
            message = "forbidden";
          case 404:
            message = "notFound";
          case 422:
            message = "duplicateEmail";
          case 500:
            message = "internalServerError";
          case 502:
            message = "badGateway";
          default:
            message = message;
        }
        break;
      case DioExceptionType.cancel:
        message = "cancel_request";
        break;
      case DioExceptionType.connectionTimeout:
        message = "connectionTimeOut";
        break;
      case DioExceptionType.receiveTimeout:
        message = "receiveTimeOut";
        break;
      case DioExceptionType.sendTimeout:
        message = "sendTimeOut";
        break;
      case DioExceptionType.connectionError:
        message = "socketException";
        break;
      default:
        message = message;
        break;
    }
    return AppException(
      statusCode: dioException.response?.statusCode,
      message: message,
    );
  }

  // factory AppException.fromFBError(FirebaseException error) {
  //   return AppException(
  //     code: error.code,
  //     message: error.message,
  //   );
  // }

  factory AppException.fromSocketError(Exception error) {
    return AppException(
      //statusCode: error.code,
      message: "No Internet",
    );
  }
}

extension HandleExceptionExtensions<T> on Future<T> {
  Future<T> get onAppError {
    return onError<Exception>(
      (exception, stackTrace) {
        if (exception is SocketException) {
          throw AppException.fromSocketError(exception);
        }
        // else if(exception is FirebaseException){
        //   throw AppException.fromFBError(exception);
        // }
        throw AppException.fromDioError(exception as DioException);
      },
      test: (exception) => exception is DioException,
    );
  }

  Future<T> get onApiError {
    return onError<Exception>(
      (exception, stackTrace) {
        throw AppException.fromDioError(exception as DioException);
      },
      test: (exception) => exception is DioException,
    );
  }

  // Future<T> get onFirebaseError {
  //   return onError<Exception>(
  //         (exception, stackTrace) {
  //       if (exception is SocketException) {
  //         throw AppException.fromSocketError(exception);
  //       }
  //       throw AppException.fromFBError(exception as FirebaseException);
  //     },
  //     test: (exception) => exception is FirebaseException,
  //   );
  // }
}
