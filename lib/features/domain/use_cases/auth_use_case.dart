import 'package:tasky/features/data/repositories/auth_repositories_impl.dart';
import 'package:tasky/features/domain/entities/auth/login_response.dart';
import 'package:tasky/features/domain/entities/auth/register_response.dart';
import 'package:tasky/features/domain/entities/auth/user_register.dart';

class UserAuthUseCase {
  final AuthRepositoryImpl repository;

  UserAuthUseCase(this.repository);

  Future<LoginResponse?> login(String phone, String password) {
    return repository.login(phone, password); // Ensure you're passing the correct parameters
  }

  Future<RegisterResponse> register(UserRegister userData) {
    return repository.register(userData);
  }
}
