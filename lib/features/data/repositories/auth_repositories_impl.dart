import 'package:tasky/features/data/data_sources/auth/auth_data_source.dart';
import 'package:tasky/features/domain/entities/auth/login_response.dart';
import 'package:tasky/features/domain/entities/auth/register_response.dart';
import 'package:tasky/features/domain/entities/auth/user_register.dart';
import 'package:tasky/features/domain/entities/logout/logout_response.dart';
import 'package:tasky/features/domain/entities/user/user_data.dart';
import 'package:tasky/features/domain/repositories/user_repositories.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthDataSource dataSource;

  AuthRepositoryImpl(this.dataSource);

  @override
  Future<LoginResponse> login(String email, String password) async {
    final userData = await dataSource.login(email, password);
    print("User repo impl: The auth for sure is logged in");
    return userData;
  }

  @override
  Future<RegisterResponse> register(UserRegister userRegister) async {
    final userData = await dataSource.register(userRegister);
    return userData;
  }

  @override
  Future<LogoutResponse> logout(String refreshToken, String accessToken) async {
    final logoutData = await dataSource.logout(refreshToken, accessToken);
    return logoutData;
  }

  @override
  Future<UserData> profile(String accessToken) async {
    final profileData = await dataSource.profile(accessToken);
    return profileData;
  }

  @override
  Future<String> refreshToken(String refreshToken) async {
    final accessToken = await dataSource.refreshToken(refreshToken);
    return accessToken;
  }
}
