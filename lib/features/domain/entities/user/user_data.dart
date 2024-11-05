import 'package:json_annotation/json_annotation.dart';

part 'user_data.g.dart';

@JsonSerializable()
class UserData {
  @JsonKey(name: '_id')
  final String? id;
  final String? displayName;
  final String? username;
  final List<String>? roles;
  final bool? active;
  final int? experienceYears;
  final String? address;
  final String? level;
  final String? createdAt;
  final String? updatedAt;
  @JsonKey(name: '__v')
  final int? V;

  const UserData({
    this.id,
    this.displayName,
    this.username,
    this.roles,
    this.active,
    this.experienceYears,
    this.address,
    this.level,
    this.createdAt,
    this.updatedAt,
    this.V,
  });

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);

  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}
