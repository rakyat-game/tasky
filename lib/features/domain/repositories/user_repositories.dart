import 'package:tasky/features/domain/entities/auth/login_response.dart';
import 'package:tasky/features/domain/entities/auth/register_response.dart';
import 'package:tasky/features/domain/entities/auth/user_register.dart';
import 'package:tasky/features/domain/entities/logout/logout_response.dart';
import 'package:tasky/features/domain/entities/user/user_data.dart';

abstract class AuthRepository {
  Future<LoginResponse?> login(String email, String password);
  Future<RegisterResponse> register(UserRegister userRegister);
  Future<LogoutResponse> logout(String refreshToken, String accessToken);
  Future<UserData> profile (String accessToken);
}
