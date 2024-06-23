import 'package:dio/dio.dart';

abstract class Faliure {
  final String errorMessage;

  Faliure({required this.errorMessage});
}

class ServerFaliure extends Faliure {
  ServerFaliure({required super.errorMessage});

  factory ServerFaliure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFaliure(
            errorMessage: 'Connection Time out with api server');
      case DioExceptionType.sendTimeout:
        return ServerFaliure(errorMessage: 'send Time out with api server');
      case DioExceptionType.receiveTimeout:
        return ServerFaliure(errorMessage: 'receive Time out with api server');
      case DioExceptionType.badCertificate:
        return ServerFaliure(errorMessage: ' badCertificate with api server');
      case DioExceptionType.badResponse:
        return ServerFaliure.fromresponse(
            dioError.response, dioError.response!.statusCode!);
      case DioExceptionType.cancel:
        return ServerFaliure(
            errorMessage: 'requsted to api server was cancelled');
      case DioExceptionType.connectionError:
        return ServerFaliure(errorMessage: 'no internet connection');
      case DioExceptionType.unknown:
        return ServerFaliure(
            errorMessage: ' oops there was an error please try later');
    }
  }
  factory ServerFaliure.fromresponse(dynamic response, int statusCode) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFaliure(errorMessage: response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFaliure(
          errorMessage: 'your request not found , please try later');
    } else if (statusCode == 500) {
      return ServerFaliure(
          errorMessage: 'Internal server error , please try later');
    } else {
      return ServerFaliure(
          errorMessage: ' oops there was an error please try later');
    }
  }
}
