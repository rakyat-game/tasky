import 'package:bloc/bloc.dart';
import 'package:tasky/features/data/data_sources/shared_preference.dart';
import 'package:tasky/features/domain/entities/auth/user_register.dart';
import 'package:tasky/features/domain/use_cases/auth/register_use_case.dart';
import 'package:tasky/features/presentation/pages/auth/register/cubit/register_state.dart';
import 'package:tasky/injection_container.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final RegisterUseCase registerUseCase;

  RegisterCubit(this.registerUseCase) : super(RegisterInitial());

  Future<void> register({
    required UserRegister userData,
  }) async {
    try {
      emit(RegisterLoading());
      final userTokens = await registerUseCase.register(userData);
      if (userTokens != null && userTokens.accessToken != null) {
        await getIt<SharedPreferenceService>()
            .saveAccessToken(userTokens.accessToken!);
        await getIt<SharedPreferenceService>()
            .saveRefreshToken(userTokens.refreshToken!);
        emit(RegisterSuccess(userTokens));
      } else {
        emit(RegisterError("Login failed"));
      }
    } catch (e) {
      emit(RegisterError("Login failed: ${e.toString()}"));
    }
  }
}
