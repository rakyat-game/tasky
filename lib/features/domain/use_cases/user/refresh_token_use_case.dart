import 'package:tasky/features/data/repositories/auth_repositories_impl.dart';

/// A use case for refreshing the user's token.
class RefreshTokenUseCase {
  /// The repository used to refresh the token.
  final AuthRepositoryImpl repository;

  /// Creates a new instance of [RefreshTokenUseCase].
  ///
  /// Takes an [AuthRepositoryImpl] as a parameter.
  RefreshTokenUseCase(this.repository);

  /// Refreshes the user's token.
  ///
  /// Takes the [accessToken] and [refreshToken] as parameters.
  /// Returns a [Future] that completes with the new access token.
  Future<String> refreshToken(String accessToken, String refreshToken) async {
    return await repository.refreshToken(accessToken, refreshToken);
  }
}