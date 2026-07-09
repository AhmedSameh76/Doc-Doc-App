import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app1/core/networking/api_result.dart';
import 'package:my_app1/features/home/data/repos/home_repo.dart';
import 'package:my_app1/features/home/presentation/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;

  HomeCubit(HomeRepo homeRepo)
    : _homeRepo = homeRepo,
      super(HomeState.initial());

  void getSplizations() async {
    emit(HomeState.splizationLoading());
    final response = await _homeRepo.getspecialization();
    response.when(
      success: (specializationResponseModel) {
        emit(HomeState.splizationSuccess(specializationResponseModel));
      },
      failure: (errorHandler) {
        emit(HomeState.splizationError(errorHandler));
      },
    );
  }
}
