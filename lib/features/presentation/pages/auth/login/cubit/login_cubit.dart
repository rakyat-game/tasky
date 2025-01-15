import 'package:bloc/bloc.dart';
import 'package:tasky/features/data/data_sources/shared_preference.dart';
import 'package:tasky/features/domain/use_cases/auth/login_use_case.dart';
import 'package:tasky/features/presentation/pages/auth/login/cubit/login_states.dart';
import 'package:tasky/injection_container.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginUseCase loginUseCase;

  LoginCubit(this.loginUseCase) : super(LoginInitial());

  Future<void> login({required String phone, required String password}) async {
    try {
      emit(LoginLoading());
      final userTokens = await loginUseCase.login(phone, password);
      if (userTokens != null && userTokens.accessToken != null) {
        await getIt<SharedPreferenceService>()
            .saveAccessToken(userTokens.accessToken!);
        emit(LoginSuccess(userTokens));
      } else {
        emit(LoginError("Login failed"));
      }
    } catch (e) {
      emit(LoginError("Login failed: ${e.toString()}"));
    }
  }
}
