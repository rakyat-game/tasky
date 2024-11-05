// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthError _$AuthErrorFromJson(Map<String, dynamic> json) => AuthError(
      message: json['message'] as String?,
      error: json['error'] as String?,
      statusCode: (json['statusCode'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AuthErrorToJson(AuthError instance) => <String, dynamic>{
      'message': instance.message,
      'error': instance.error,
      'statusCode': instance.statusCode,
    };
