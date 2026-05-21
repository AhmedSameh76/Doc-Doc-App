import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:my_app1/core/Networking/api_service.dart';
import 'package:my_app1/core/Networking/dio_factory.dart';
import 'package:my_app1/features/login/data/repos/login_repo.dart';
import 'package:my_app1/features/login/presentation/cubit/login_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  //login 
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));

}
