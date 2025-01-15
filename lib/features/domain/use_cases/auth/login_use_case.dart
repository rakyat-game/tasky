import 'package:tasky/features/data/repositories/auth_repositories_impl.dart';
import 'package:tasky/features/domain/entities/auth/login_response.dart';

class LoginUseCase {
  final AuthRepositoryImpl repository;

  LoginUseCase(this.repository);

  Future<LoginResponse?> login(String phone, String password) async {
    return await repository.login(phone, password);
  }
}
