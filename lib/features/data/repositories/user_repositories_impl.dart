import 'package:tasky/features/data/data_sources/user/user_data_sources.dart';
import 'package:tasky/features/domain/entities/auth/login_response.dart';
import 'package:tasky/features/domain/entities/auth/register_response.dart';
import 'package:tasky/features/domain/entities/auth/user_register.dart';
import 'package:tasky/features/domain/entities/logout/logout_response.dart';
import 'package:tasky/features/domain/repositories/user_repositories.dart';

class UserRepositoryImpl implements UserRepository {
  final UserDataSource dataSource;

  UserRepositoryImpl(this.dataSource);

  @override
  Future<LoginResponse?> login(String email, String password) async {
    final userData = await dataSource.login(email, password);
    print("User repo impl: The user for sure is logged in");
    return userData;
  }

  @override
  Future<RegisterResponse> register(UserRegister userRegister) async {
    final userData = await dataSource.register(userRegister);
    final userTokens = RegisterResponse.fromJson(userData);
    return userTokens;
  }

  @override
  Future<LogoutResponse> logout(String token) async {
    return await LogoutResponse(success: true);
  }
}
