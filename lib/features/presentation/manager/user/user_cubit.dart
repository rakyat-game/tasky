import 'package:bloc/bloc.dart';
import 'package:tasky/features/domain/entities/auth/user_register.dart';
import 'package:tasky/features/domain/use_cases/user_login.dart';
import 'package:tasky/features/presentation/manager/user/user_states.dart';

class CounterCubit extends Cubit<UserState> {
  final UserAuthUseCase userAuthUseCase;

  CounterCubit(super.initialState, this.userAuthUseCase);

  Future<void> login(String email, String password) async {
    try {
      emit(UserLoading());
      final userTokens = await userAuthUseCase.login(email, password);
      emit(UserLoginSuccess(userTokens));
    } catch (e) {
      emit(UserError("Login failed"));
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
