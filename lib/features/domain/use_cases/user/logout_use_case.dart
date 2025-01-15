import 'package:tasky/features/data/repositories/auth_repositories_impl.dart';
import 'package:tasky/features/domain/entities/logout/logout_response.dart';

/// A use case for logging out a user.
class LogoutUseCase {
  /// The repository that handles authentication-related operations.
  final AuthRepositoryImpl repository;

  /// Creates an instance of [LogoutUseCase] with the given [repository].
  LogoutUseCase(this.repository);

  /// Logs out the user using the provided [refresh] and [access] tokens.
  ///
  /// Returns a [LogoutResponse] indicating the result of the logout operation.
  Future<LogoutResponse> logout(String refresh, String access) async {
    return await repository.logout(refresh, access);
  }
}