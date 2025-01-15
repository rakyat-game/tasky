import 'package:tasky/features/data/repositories/auth_repositories_impl.dart';
import 'package:tasky/features/domain/entities/auth/register_response.dart';
import 'package:tasky/features/domain/entities/auth/user_register.dart';

/// Use case for registering a user.
class RegisterUseCase {
  /// Repository for authentication operations.
  final AuthRepositoryImpl repository;

  /// Constructor for `RegisterUseCase`.
  ///
  /// Takes an [AuthRepositoryImpl] as a parameter.
  RegisterUseCase(this.repository);

  /// Registers a user with the provided [UserRegister] data.
  ///
  /// Returns a [Future] that completes with a [RegisterResponse].
  Future<RegisterResponse> register(UserRegister userData) async {
    return await repository.register(userData);
  }
}