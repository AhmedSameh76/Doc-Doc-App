import 'package:json_annotation/json_annotation.dart';
part 'doctor_details_response_model.g.dart';

@JsonSerializable()
class DoctorDetailsResponseModel {

  String? message;
  bool? status;
  int? code;
  DoctorData? data; 

  DoctorDetailsResponseModel({this.message, this.status, this.code, this.data});
  factory DoctorDetailsResponseModel.fromJson(Map<String,dynamic> json) => _$DoctorDetailsResponseModelFromJson(json);
}

@JsonSerializable()
  class DoctorData {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? photo;
  String? gender;
  String? address;
  String? description;
  String? degree;
  City? city;
  Specialization? specialization;
  @JsonKey(name: "appoint_price")
  int? price;

  @JsonKey(name: "start_time")
  String? startTime;

  @JsonKey(name: "end_time")
  String? endTime;

  DoctorData({
    this.id, this.name, this.email, this.phone, this.photo,
    this.gender, this.address, this.description, this.degree,
    this.specialization, this.city, this.price, this.startTime, this.endTime,
  });
  factory DoctorData.fromJson(Map<String,dynamic>json) =>_$DoctorDataFromJson(json);
}

@JsonSerializable()
class Specialization {
  int? id;
  String? name;
  Specialization({this.id, this.name});
  factory Specialization.fromJson(Map<String, dynamic> json) => _$SpecializationFromJson(json);
}
@JsonSerializable()
class City {
  int? id;
  String? name;
  Governrate ? governrate ;

  City({this.id, this.name, this.governrate});
  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);

}

@JsonSerializable()
 class Governrate {
  int? id;
  String? name;
  Governrate({this.id, this.name});

  factory Governrate.fromJson(Map<String, dynamic> json) => _$GovernrateFromJson(json);
}




