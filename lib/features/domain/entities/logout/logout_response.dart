import 'package:json_annotation/json_annotation.dart';

part 'logout_response.g.dart';

@JsonSerializable()
class LogoutResponse {
  final bool? success;

  const LogoutResponse({
    this.success,
  });

  factory LogoutResponse.fromJson(Map<String, dynamic> json) =>
      _$LogoutResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LogoutResponseToJson(this);
}
