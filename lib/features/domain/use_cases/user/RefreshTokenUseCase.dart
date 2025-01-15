import 'package:tasky/features/data/repositories/auth_repositories_impl.dart';

class RefreshTokenUseCase {
  final AuthRepositoryImpl repository;

  RefreshTokenUseCase(this.repository);

  Future<String> refreshToken(String accessToken, String refreshToken) async {
    return await repository.refreshToken(accessToken, refreshToken);
  }
}
