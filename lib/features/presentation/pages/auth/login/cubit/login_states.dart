import 'package:tasky/features/domain/entities/auth/login_response.dart';

abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {
  final LoginResponse user;

  LoginSuccess(this.user);
}

class LoginError extends LoginState {
  final String message;

  LoginError(this.message);
}
