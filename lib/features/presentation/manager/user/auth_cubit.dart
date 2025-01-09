import 'package:bloc/bloc.dart';
import 'package:tasky/features/data/data_sources/shared_preference.dart';
import 'package:tasky/features/domain/entities/auth/user_register.dart';
import 'package:tasky/features/domain/use_cases/auth_use_case.dart';
import 'package:tasky/features/presentation/manager/user/auth_states.dart';
import 'package:tasky/injection_container.dart';

class UserAuthCubit extends Cubit<UserState> {
  final UserAuthUseCase userAuthUseCase;

  UserAuthCubit(super.initialState, {required this.userAuthUseCase});

  Future<void> login({required String phone, required String password}) async {
    try {
      emit(UserLoading());
      final userTokens = await userAuthUseCase.login(phone, password);
      print(
          "Cubit: The auth sure is logged in and his tokens are: $userTokens");
      if (userTokens != null) {
        if (userTokens.accessToken != null) {
          await getIt<SharedPreferenceService>()
              .saveAccessToken(userTokens.accessToken!);
        }
        emit(UserLoginSuccess(userTokens)); // Emit success with non-null tokens
      } else {
        print("Cubit: wait what how");
        emit(UserError("Login failed")); // Handle case where login is null
      }
    } catch (e) {
      print("Cubit: Sure he didn't insert the data correct");
      emit(UserError(
          "Login failed: ${e.toString()}")); // Include error message for debugging
    }
  }

  Future<void> register(UserRegister userData) async {
    try {
      emit(UserLoading());
      final response = await userAuthUseCase.register(userData);
      emit(UserRegisterSuccess(response));
    } catch (e) {
      emit(UserError("Register failed"));
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
      emit(UserError("Refresh Failed"));
    }
  }

  Future<void> logout() async {
    try {
      emit(UserLoading());
      final access = getIt<SharedPreferenceService>().getAccessToken();
      final refresh = getIt<SharedPreferenceService>().getRefreshToken();
      await getIt<SharedPreferenceService>().clearTokens();
      final response = await userAuthUseCase.logout(refresh!, access!);
    } catch (e) {
      emit(UserError("Register failed"));
    }
  }
}
