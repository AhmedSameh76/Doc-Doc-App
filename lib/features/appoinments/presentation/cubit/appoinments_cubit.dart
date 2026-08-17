import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:my_app1/core/networking/api_error_model.dart';
import 'package:my_app1/features/appoinments/data/models/appoinments_model.dart';
import 'package:my_app1/features/appoinments/data/repo/appointment_repo_.dart';
import 'package:my_app1/features/appoinments/presentation/cubit/appoinments_state.dart';
import 'package:my_app1/features/doctor_details/data/model/doctor_details_response_model.dart';

class AppoinmentsCubit extends Cubit<AppoinmentsState> {
  int selectedIndex = -1;
  bool isTimeBooked = false;
  String selectedAppointmentTime = '';
  String selectedDateDisplay = '';
  String selectedMothed = '1';
  String selectedCardType = 'master';

  bool isBookedSuccessfully = false;

  DoctorData? doctorData;

  AppoinmentsModel? appointmentModel;
  final AppointmentRepo appointmentRepo;

  AppoinmentsCubit(this.appointmentRepo)
      : super(const AppoinmentsState.initial());

  void setDoctor(DoctorData doctor) {
    doctorData = doctor;
  }

  Future<void> getAppointment({required String date}) async {
    isBookedSuccessfully = false;
    selectedIndex = -1;
    selectedAppointmentTime = '';
    emit(const AppoinmentsState.appointmentloading());

    final result = await appointmentRepo.getAppointment(date: date);

    result.fold(
      ifLeft: (failure) {
        emit(
          AppoinmentsState.appointmentFailuer(
            failure.errorHandler.apiErrorModel,
          ),
        );
      },
      ifRight: (data) {
        appointmentModel = data;
        emit(AppoinmentsState.appointmentSuccess(data));
      },
    );
  }

  void setSelectedDate(String displayDate) {
    selectedDateDisplay = displayDate;
  }

  void setSelectedTime(int index, String time) {
    selectedIndex = index;
    selectedAppointmentTime = selectedDateDisplay.isNotEmpty
        ? '$selectedDateDisplay | $time'
        : time;
  }

  /// حجز Mock بالكامل — من غير أي اعتماد على appointmentModel.data
  /// (مناسب لمشروع كورس لحد ما الباك اند يوفر endpoint حقيقي للمواعيد المتاحة)
  Future<void> bookAppointment() async {
    if (selectedIndex == -1 || selectedAppointmentTime.isEmpty) {
      emit(
        AppoinmentsState.appointmentFailuer(
          ApiErrorModel(message: "Please select an appointment time"),
        ),
      );
      return;
    }

    emit(const AppoinmentsState.appointmentloading());

    // محاكاة استدعاء API بتأخير بسيط
    await Future.delayed(const Duration(milliseconds: 900));

    isBookedSuccessfully = true;
    emit(
      AppoinmentsState.appointmentSuccess(
        appointmentModel ?? AppoinmentsModel(data: const []),
      ),
    );
  }

  void selectMethodType(String selectedMothedType) {
    selectedMothed = selectedMothedType;
    emit(AppoinmentsState.selectedMothed());
  }

  void selectedCard(String cardType) {
    selectedCardType = cardType;
    emit(AppoinmentsState.selectedCardType());
  }
}