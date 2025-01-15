import 'package:tasky/features/data/data_sources/auth/auth_data_source.dart';
import 'package:tasky/features/domain/entities/auth/login_response.dart';
import 'package:tasky/features/domain/entities/auth/register_response.dart';
import 'package:tasky/features/domain/entities/auth/user_register.dart';
import 'package:tasky/features/domain/entities/logout/logout_response.dart';
import 'package:tasky/features/domain/entities/user/user_data.dart';
import 'package:tasky/features/domain/repositories/auth_repositories.dart';

/// Implementation of the [AuthRepository] interface.
class AuthRepositoryImpl implements AuthRepository {
  final AuthDataSource dataSource;

  /// Creates an instance of [AuthRepositoryImpl] with the given [dataSource].
  AuthRepositoryImpl(this.dataSource);

  /// Logs in a user with the provided [email] and [password].
  ///
  /// Returns a [LoginResponse] containing user data.
  @override
  Future<LoginResponse> login(String email, String password) async {
    final userData = await dataSource.login(email, password);
    return userData;
  }

  /// Registers a new user with the provided [userRegister] data.
  ///
  /// Returns a [RegisterResponse] containing user data.
  @override
  Future<RegisterResponse> register(UserRegister userRegister) async {
    final userData = await dataSource.register(userRegister);
    return userData;
  }

  /// Logs out a user with the provided [refreshToken] and [accessToken].
  ///
  /// Returns a [LogoutResponse] indicating the result of the logout operation.
  @override
  Future<LogoutResponse> logout(String refreshToken, String accessToken) async {
    final logoutData = await dataSource.logout(refreshToken, accessToken);
    return logoutData;
  }

  /// Retrieves the profile of a user with the provided [accessToken].
  ///
  /// Returns [UserData] containing the user's profile information.
  @override
  Future<UserData> profile(String accessToken) async {
    final profileData = await dataSource.profile(accessToken);
    return profileData;
  }

  /// Refreshes the access token using the provided [accessToken] and [refreshToken].
  ///
  /// Returns a new access token as a [String].
  @override
  Future<String> refreshToken(String accessToken, String refreshToken) async {
    final newAccessToken = await dataSource.refreshToken(accessToken, refreshToken);
    return newAccessToken;
  }
}
