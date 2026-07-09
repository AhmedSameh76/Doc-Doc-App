import 'package:dio/dio.dart';

import 'package:my_app1/core/helpers/const.dart';
import 'package:my_app1/core/shared_prefrance/shared_pref_helper.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';


class DioFactory {
  /// private constructor as I don't want to allow creating an instance of this class
  DioFactory._();

  static Dio? dio;

  static Dio getDio() {
    Duration timeOut = const Duration(seconds: 30);

    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      addDioHeaders();
      addDioInterceptor();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioHeaders() {
    dio?.options.headers = {
      'Accept': 'application/json',
      'Authorization':
          'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3ZjYXJlLmludGVncmF0aW9uMjUuY29tL2FwaS9hdXRoL3JlZ2lzdGVyIiwiaWF0IjoxNzgzNjAzNDc1LCJleHAiOjE3ODM2ODk4NzUsIm5iZiI6MTc4MzYwMzQ3NSwianRpIjoiTWJTQmNPRmkweGJQbWdBYiIsInN1YiI6IjcyMzIiLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.GwMtyq2MDEjuVXF0rZG2cAr4AWvTo7Q_5yCyi795878',
    };
  }

  static void setTokenIntoHeaderAfterLogin(String token) {
    dio?.options.headers = {
      'Authorization': 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3ZjYXJlLmludGVncmF0aW9uMjUuY29tL2FwaS9hdXRoL3JlZ2lzdGVyIiwiaWF0IjoxNzgzNjAzNDc1LCJleHAiOjE3ODM2ODk4NzUsIm5iZiI6MTc4MzYwMzQ3NSwianRpIjoiTWJTQmNPRmkweGJQbWdBYiIsInN1YiI6IjcyMzIiLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.GwMtyq2MDEjuVXF0rZG2cAr4AWvTo7Q_5yCyi795878',
    };
  }

  static void addDioInterceptor() {
    dio?.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    );
  }
}