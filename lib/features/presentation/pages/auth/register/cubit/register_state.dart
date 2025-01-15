import 'package:tasky/features/domain/entities/auth/register_response.dart';

abstract class RegisterState {}

class RegisterInitial extends RegisterState {}

class RegisterLoading extends RegisterState {}

class RegisterSuccess extends RegisterState {
  final RegisterResponse user;

  RegisterSuccess(this.user);
}

class RegisterError extends RegisterState {
  final String message;

  RegisterError(this.message);
}
