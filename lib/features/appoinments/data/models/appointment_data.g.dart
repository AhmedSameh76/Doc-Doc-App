// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppointmentData _$AppointmentDataFromJson(Map<String, dynamic> json) =>
    AppointmentData(
      id: (json['id'] as num?)?.toInt(),
      startTime: json['appointment_time'] as String?,
      endTime: json['appointment_end_time'] as String?,
      isBooked: json['is_booked'] as bool?,
    );

Map<String, dynamic> _$AppointmentDataToJson(AppointmentData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'appointment_time': instance.startTime,
      'appointment_end_time': instance.endTime,
      'is_booked': instance.isBooked,
    };
