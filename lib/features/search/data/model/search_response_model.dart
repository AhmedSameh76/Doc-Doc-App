import 'package:json_annotation/json_annotation.dart';
import 'package:my_app1/features/doctor_details/data/model/doctor_details_response_model.dart';
part 'search_response_model.g.dart';

@JsonSerializable()
class SearchResponseModel {
  List<DoctorData>? data;
  String? message;
  bool? status;
  int? code;

  SearchResponseModel({
    this.data,
    this.message,
    this.status,
    this.code,
  });

  factory SearchResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseModelFromJson(json);
}