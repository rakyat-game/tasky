import 'package:bloc/bloc.dart';
import 'package:tasky/features/data/data_sources/shared_preference.dart';
import 'package:tasky/features/domain/entities/auth/user_register.dart';
import 'package:tasky/features/domain/use_cases/auth_use_case.dart';
import 'package:tasky/features/presentation/manager/user/auth_states.dart';
import 'package:tasky/injection_container.dart';
class UserAuthCubit extends Cubit<UserState> {
  final UserAuthUseCase userAuthUseCase;

  UserAuthCubit({required this.userAuthUseCase}) : super(UserInitial());

  Future<void> login({required String phone, required String password}) async {
    try {
      emit(UserLoading());
      final userTokens = await userAuthUseCase.login(phone, password);
      if (userTokens != null && userTokens.accessToken != null) {
        await getIt<SharedPreferenceService>()
            .saveAccessToken(userTokens.accessToken!);
        emit(UserLoginSuccess(userTokens));
      } else {
        emit(UserError("Login failed"));
      }
    } catch (e) {
      emit(UserError("Login failed: ${e.toString()}"));
    }
  }

  Future<void> register(UserRegister userData) async {
    try {
      emit(UserLoading());
      final response = await userAuthUseCase.register(userData);
      await getIt<SharedPreferenceService>()
          .saveAccessToken(response.accessToken!);

      emit(UserRegisterSuccess(response));
    } catch (e) {
      emit(UserError("Register failed: ${e.toString()}"));
    }
  }

  Future<void> refreshToken() async {
    try {
      emit(UserLoading());
      final access = getIt<SharedPreferenceService>().getAccessToken();
      final refresh = getIt<SharedPreferenceService>().getRefreshToken();
      final newAccessToken =
      await userAuthUseCase.refreshToken(access!, refresh!);
      getIt<SharedPreferenceService>().saveAccessToken(newAccessToken);
    } catch (e) {
      emit(UserError("Refresh Failed: ${e.toString()}"));
    }
  }

  Future<void> logout() async {
    try {
      emit(UserLoading());
      final access = getIt<SharedPreferenceService>().getAccessToken();
      final refresh = getIt<SharedPreferenceService>().getRefreshToken();
      await getIt<SharedPreferenceService>().clearTokens();
      await userAuthUseCase.logout(refresh!, access!);
      emit(UserInitial());
    } catch (e) {
      emit(UserError("Logout failed: ${e.toString()}"));
    }
  }
}
