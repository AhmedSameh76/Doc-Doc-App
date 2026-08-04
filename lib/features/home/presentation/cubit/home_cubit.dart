import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app1/core/helpers/extentaions.dart';
import 'package:my_app1/core/networking/api_error_handler.dart';
import 'package:my_app1/core/networking/api_result.dart';
import 'package:my_app1/features/home/data/models/specialization_response_model.dart';
import 'package:my_app1/features/home/data/repos/home_repo.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  List<SpecializationData?>? specializationsList = [];

  void getSpecializations() async {
    emit(const HomeState.splizationLoading());
    final response = await _homeRepo.getspecialization();
    response.when(
      success: (specializationsResponseModel) {
        specializationsList =
            specializationsResponseModel.specializationDataList ?? [];

        // getting the doctors list for the first specialization by default.
        getDoctorsList(specializationId: specializationsList?.first?.id);

        emit(
          HomeState.splizationSuccess(
            specializationsResponseModel.specializationDataList,
          ),
        );
      },
      failure: (errorHandler) {
        emit(HomeState.splizationError(errorHandler));
      },
    );
  }

  void getDoctorsList({required int? specializationId}) {
    List<Doctors?>? doctorsList = getDoctorsListBySpecializationId(
      specializationId,
    );

    if (!doctorsList.isNullOrEmpty()) {
      emit(HomeState.doctorSuccess(doctorsList));
    } else {
      emit(HomeState.doctorError(ErrorHandler.handle('No doctors found')));
    }
  }

  getDoctorsListBySpecializationId(specializationId) {
    return specializationsList
        ?.firstWhere((specialization) => specialization?.id == specializationId)
        ?.doctorsList;
  }
}
