// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

/// Converts a JSON map to an `AuthError` instance.
AuthError _$AuthErrorFromJson(Map<String, dynamic> json) => AuthError(
      message: json['message'] as String?,
      error: json['error'] as String?,
      statusCode: (json['statusCode'] as num?)?.toInt(),
    );

/// Converts an `AuthError` instance to a JSON map.
Map<String, dynamic> _$AuthErrorToJson(AuthError instance) => <String, dynamic>{
      'message': instance.message,
      'error': instance.error,
      'statusCode': instance.statusCode,
    };