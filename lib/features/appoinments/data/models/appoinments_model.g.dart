// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appoinments_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppoinmentsModel _$AppoinmentsModelFromJson(Map<String, dynamic> json) =>
    AppoinmentsModel(
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => AppointmentData.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as bool?,
      code: (json['code'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AppoinmentsModelToJson(AppoinmentsModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'status': instance.status,
      'code': instance.code,
    };
