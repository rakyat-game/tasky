import 'package:tasky/features/domain/entities/auth/login_response.dart';
import 'package:tasky/features/domain/entities/auth/register_response.dart';
import 'package:tasky/features/domain/entities/auth/user_register.dart';
import 'package:tasky/features/domain/repositories/user_repositories.dart';

class UserAuthUseCase {
  final UserRepository repository;

  UserAuthUseCase(this.repository);

  Future<LoginResponse> login(String email, String password) {
    return repository.login(email, password);
  }

  Future<RegisterResponse> register(UserRegister userData) {
    return repository.register(userData);
  }
}
