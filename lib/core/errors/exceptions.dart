import 'package:dio/dio.dart';

import 'error_model.dart';

//!ServerException
class ServerException implements Exception {
  final ErrorModel errorModel;

  ServerException(this.errorModel);

  @override
  String toString() => errorModel.errorMessage;
}

//!CacheException
class CacheException implements Exception {
  final String errorMessage;

  CacheException({required this.errorMessage});
}

class BadCertificateException extends ServerException {
  BadCertificateException(super.errorModel);
}

class ConnectionTimeoutException extends ServerException {
  ConnectionTimeoutException(super.errorModel);
}

class BadResponseException extends ServerException {
  BadResponseException(super.errorModel);
}

class ReceiveTimeoutException extends ServerException {
  ReceiveTimeoutException(super.errorModel);
}

class ConnectionErrorException extends ServerException {
  ConnectionErrorException(super.errorModel);
}

class SendTimeoutException extends ServerException {
  SendTimeoutException(super.errorModel);
}

class UnauthorizedException extends ServerException {
  UnauthorizedException(super.errorModel);
}

class ForbiddenException extends ServerException {
  ForbiddenException(super.errorModel);
}

class NotFoundException extends ServerException {
  NotFoundException(super.errorModel);
}

class CoefficientException extends ServerException {
  CoefficientException(super.errorModel);
}

class CancelException extends ServerException {
  CancelException(super.errorModel);
}

class UnknownException extends ServerException {
  UnknownException(super.errorModel);
}

ErrorModel _errorModel(DioException e) {
  if (e.response?.data != null) {
    return ErrorModel.fromJson(e.response!.data);
  } else {
    return ErrorModel(errorMessage: 'Please check your internet connection');
  }
}

void handleDioException(DioException e) {
  switch (e.type) {
    case DioExceptionType.connectionError:
      throw ConnectionErrorException(_errorModel(e));

    case DioExceptionType.connectionTimeout:
      throw ConnectionTimeoutException(_errorModel(e));

    case DioExceptionType.receiveTimeout:
      throw ReceiveTimeoutException(_errorModel(e));

    case DioExceptionType.sendTimeout:
      throw SendTimeoutException(_errorModel(e));

    case DioExceptionType.badCertificate:
      throw BadCertificateException(_errorModel(e));

    case DioExceptionType.badResponse:
      switch (e.response?.statusCode) {
        case 400:
          throw BadResponseException(_errorModel(e));
        case 401:
          throw UnauthorizedException(_errorModel(e));
        case 403:
          throw ForbiddenException(_errorModel(e));
        case 404:
          throw NotFoundException(_errorModel(e));
        case 409:
          throw CoefficientException(_errorModel(e));
        default:
          throw UnknownException(_errorModel(e));
      }

    case DioExceptionType.cancel:
      throw CancelException(ErrorModel(errorMessage: 'Request was cancelled'));

    case DioExceptionType.unknown:
      throw UnknownException(
        ErrorModel(errorMessage: 'Unexpected error occurred'),
      );
  }
}
