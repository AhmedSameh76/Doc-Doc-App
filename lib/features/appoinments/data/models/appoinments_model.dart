import 'package:json_annotation/json_annotation.dart';
import 'appointment_data.dart';

part 'appoinments_model.g.dart';

@JsonSerializable(explicitToJson: true)
class AppoinmentsModel {
  final String? message;
  final List<AppointmentData>? data; 
  final bool? status;
  final int? code;

  AppoinmentsModel({
    this.message,
    this.data,
    this.status,
    this.code,
  });

  factory AppoinmentsModel.fromJson(Map<String, dynamic> json) =>
      _$AppoinmentsModelFromJson(json);

  Map<String, dynamic> toJson() => _$AppoinmentsModelToJson(this);
}