import 'package:tasky/features/data/repositories/auth_repositories_impl.dart';
import 'package:tasky/features/domain/entities/auth/register_response.dart';
import 'package:tasky/features/domain/entities/auth/user_register.dart';

class RegisterUseCase {
  final AuthRepositoryImpl repository;

  RegisterUseCase(this.repository);

  Future<RegisterResponse> register(UserRegister userData) async {
    return await repository.register(userData);
  }
}
