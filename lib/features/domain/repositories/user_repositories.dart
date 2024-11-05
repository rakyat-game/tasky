import 'package:tasky/features/domain/entities/auth/login_response.dart';
import 'package:tasky/features/domain/entities/auth/register_response.dart';
import 'package:tasky/features/domain/entities/auth/user_register.dart';
import 'package:tasky/features/domain/entities/logout/logout_response.dart';

abstract class UserRepository {
  Future<LoginResponse> login(String email, String password);

  Future<RegisterResponse> register(UserRegister userRegister);

  Future<LogoutResponse> logout(String token);
}
