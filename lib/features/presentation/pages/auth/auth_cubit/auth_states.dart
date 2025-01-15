import 'package:tasky/features/domain/entities/auth/login_response.dart';
import 'package:tasky/features/domain/entities/auth/register_response.dart';

abstract class UserState {}

class UserInitial extends UserState {}

class UserLoading extends UserState {}

class UserLoginSuccess extends UserState {
  final LoginResponse user;

  UserLoginSuccess(this.user);
}

class UserRegisterSuccess extends UserState {
  final RegisterResponse response;

  UserRegisterSuccess(this.response);
}

class UserError extends UserState {
  final String message;

  UserError(this.message);
}
