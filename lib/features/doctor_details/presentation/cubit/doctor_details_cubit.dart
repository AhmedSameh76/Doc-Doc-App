import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app1/features/doctor_details/data/repo/doctor_details_repo.dart';
import 'package:my_app1/features/doctor_details/presentation/cubit/doctor_details_state.dart';

class DoctorDetailsCubit extends Cubit<DoctorDetailsState> {
  final DoctorDetailsRepo doctorDetailsRepo;
  DoctorDetailsCubit(this.doctorDetailsRepo)
    : super(const DoctorDetailsState.initial());

  Future<void> getDocDetails(int id) async {
    emit(const DoctorDetailsState.detailoading());
    final response = await doctorDetailsRepo.getDocDetails(id);
    response.fold(
      ifLeft: (failure) {
        emit(DoctorDetailsState.detailsError(failure.errorHandler.apiErrorModel));
      },
      ifRight: (data) {
        emit(DoctorDetailsState.detailsSuccess(data));
      },
    );
  }
}
