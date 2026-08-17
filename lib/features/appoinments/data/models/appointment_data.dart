import 'package:json_annotation/json_annotation.dart';

part 'appointment_data.g.dart';

@JsonSerializable()
class AppointmentData {
  final int? id;

@JsonKey(name: 'appointment_time')
  final String? startTime;

  @JsonKey(name: 'appointment_end_time') 
  final String? endTime;

  @JsonKey(name: 'is_booked')
  final bool? isBooked;

  AppointmentData({
    this.id,
    this.startTime,
    this.endTime,
    this.isBooked,
  });

  factory AppointmentData.fromJson(Map<String, dynamic> json) =>
      _$AppointmentDataFromJson(json);

  Map<String, dynamic> toJson() => _$AppointmentDataToJson(this);
}