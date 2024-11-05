import 'package:bloc/bloc.dart';
import 'package:tasky/features/domain/entities/auth/user_register.dart';
import 'package:tasky/features/domain/use_cases/user_use_case.dart';
import 'package:tasky/features/presentation/manager/user/user_states.dart';

class UserAuthCubit extends Cubit<UserState> {
  final UserAuthUseCase userAuthUseCase;

  UserAuthCubit(super.initialState, {required this.userAuthUseCase});

  Future<void> login({required String phone, required String password}) async {
    try {
      emit(UserLoading());
      final userTokens = await userAuthUseCase.login(phone, password);
      print("Cubit: The auth sure is logged in and his tokens are: $userTokens");
      if (userTokens != null) {
        emit(UserLoginSuccess(userTokens)); // Emit success with non-null tokens
      } else {
        print("Cubit: wait what how");
        emit(UserError("Login failed")); // Handle case where login is null
      }
    } catch (e) {
      print("Cubit: Sure he didn't insert the data correct");
      emit(UserError("Login failed: ${e.toString()}")); // Include error message for debugging
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
}
