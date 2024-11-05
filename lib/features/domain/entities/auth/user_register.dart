import 'package:json_annotation/json_annotation.dart';

part 'user_register.g.dart';

@JsonSerializable()
class UserRegister {
  final String? phone;
  final String? password;
  final String? displayName;
  final int? experienceYears;
  final String? address;
  final String? level;

  const UserRegister({
    this.phone,
    this.password,
    this.displayName,
    this.experienceYears,
    this.address,
    this.level,
  });

  factory UserRegister.fromJson(Map<String, dynamic> json) =>
      _$UserRegisterFromJson(json);

  Map<String, dynamic> toJson() => _$UserRegisterToJson(this);
}
