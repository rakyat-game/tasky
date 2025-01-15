import 'package:tasky/features/domain/entities/user/user_data.dart';
import 'package:tasky/features/domain/repositories/auth_repositories.dart';

class ProfileUseCase {
  final AuthRepository authRepository;

  ProfileUseCase(this.authRepository);

  Future<UserData> getProfile({required String accessToken}) async {
    return await authRepository.profile(accessToken);
  }
}