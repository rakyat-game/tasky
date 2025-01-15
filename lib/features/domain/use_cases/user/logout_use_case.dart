import 'package:tasky/features/data/repositories/auth_repositories_impl.dart';
import 'package:tasky/features/domain/entities/logout/logout_response.dart';

class LogoutUseCase {
  final AuthRepositoryImpl repository;

  LogoutUseCase(this.repository);

  Future<LogoutResponse> logout(String refresh, String access) async {
    return await repository.logout(refresh, access);
  }
}
