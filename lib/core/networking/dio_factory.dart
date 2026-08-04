import 'package:dio/dio.dart';
import 'package:my_app1/core/Routing/app_routers.dart';
import 'package:my_app1/core/Routing/routes.dart'; // مسارات الـ GoRouter
import 'package:my_app1/core/helpers/const.dart';
import 'package:my_app1/core/shared_prefrance/shared_pref_helper.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
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

  static void setTokenIntoHeaderAfterLogin(String token) {
    dio?.options.headers['Authorization'] = 'Bearer $token';
  }

  static void addDioInterceptor() {
    dio?.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final String token =
              await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
          options.headers['Authorization'] = 'Bearer $token';
          handler.next(options);
        },
       
        onError: (DioException error, handler) async {
          if (error.response?.statusCode == 401) {
            await SharedPrefHelper.clearAllSecuredData();
            await SharedPrefHelper.clearAllData();

            AppRouters.router.go(Routes.login);
          }
          handler.next(error);
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