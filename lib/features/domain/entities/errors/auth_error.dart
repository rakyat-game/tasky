import 'package:json_annotation/json_annotation.dart';

part 'auth_error.g.dart';

/// A class representing an authentication error.
@JsonSerializable()
class AuthError {
  /// The error message.
  final String? message;

  /// The error type.
  final String? error;

  /// The HTTP status code.
  final int? statusCode;

  /// Creates an instance of [AuthError].
  const AuthError({
    this.message,
    this.error,
    this.statusCode,
  });

  /// Creates an [AuthError] instance from a JSON object.
  factory AuthError.fromJson(Map<String, dynamic> json) =>
      _$AuthErrorFromJson(json);

  /// Converts the [AuthError] instance to a JSON object.
  Map<String, dynamic> toJson() => _$AuthErrorToJson(this);
}