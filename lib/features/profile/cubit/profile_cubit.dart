import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app1/core/networking/api_result.dart';
import 'package:my_app1/features/profile/data/repo/profile_repo.dart';
import 'package:my_app1/features/profile/cubit/profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final ProfileRepo _profileRepo;

  ProfileCubit(this._profileRepo) : super(const ProfileState.initial());

  void getUserProfile() async {
    emit(const ProfileState.loading());
    final response = await _profileRepo.getUserProfile();
    response.when(
      success: (userData) => emit(ProfileState.success(userData)),
      failure: (errorHandler) => emit(ProfileState.failure(errorHandler)),
    );
  }
}