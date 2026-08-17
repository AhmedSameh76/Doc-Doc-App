import 'package:json_annotation/json_annotation.dart';
part 'user_profile_response.g.dart';

@JsonSerializable()
class ProfileUserData {
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'phone')
  final String? phone;
  @JsonKey(name: 'gender')
  final String? gender;

  ProfileUserData({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.gender,
  });

  factory ProfileUserData.fromJson(Map<String, dynamic> json) =>
      _$ProfileUserDataFromJson(json);
}

@JsonSerializable()
class UserProfileResponse {
  @JsonKey(name: 'data')
  final List<ProfileUserData>? data;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'status')
  final bool? status;
  @JsonKey(name: 'code')
  final int? code;

  UserProfileResponse({
    this.data,
    this.message,
    this.status,
    this.code,
  });

  factory UserProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$UserProfileResponseFromJson(json);
}