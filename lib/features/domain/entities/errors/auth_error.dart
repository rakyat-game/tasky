import 'package:json_annotation/json_annotation.dart';

part 'auth_error.g.dart';

@JsonSerializable()
class AuthError {
  final String? message;
  final String? error;
  final int? statusCode;

  const AuthError({
    this.message,
    this.error,
    this.statusCode,
  });

  factory AuthError.fromJson(Map<String, dynamic> json) =>
      _$AuthErrorFromJson(json);

  Map<String, dynamic> toJson() => _$AuthErrorToJson(this);
}
