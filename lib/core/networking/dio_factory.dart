import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
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
        ..options.receiveTimeout = timeOut
        ..options.headers = {
          'Accept': 'application/json',
        };
      addDioInterceptor();
      return dio!;
    } else {
      return dio!;
    }
  }

  /// بنحدث التوكن في الـ header مباشرة (بعد تسجيل الدخول مثلاً)
  static void setTokenIntoHeaderAfterLogin(String token) {
    dio?.options.headers['Authorization'] = 'Bearer $token';
  }

  static void addDioInterceptor() {
    dio?.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          // بنجيب التوكن قبل كل request بدل ما نعتمد على وقت إنشاء الـ Dio
          // (وبما إن getSecuredString بقت محصّنة بـ try/catch، مش هتعمل crash)
          final token = await SharedPrefHelper.getSecuredString(
            SharedPrefKeys.userToken,
          );
          if (token.isNotEmpty) {
            options.headers['Authorization'] = 'Bearer $token';
          }
          return handler.next(options);
        },
        onError: (error, handler) {
          debugPrint("Dio error: ${error.message}");
          return handler.next(error);
        },
      ),
    );

    dio?.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    );
  }
}