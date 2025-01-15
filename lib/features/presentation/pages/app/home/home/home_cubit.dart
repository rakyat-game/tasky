import 'package:bloc/bloc.dart';
import 'package:tasky/features/data/data_sources/shared_preference.dart';
import 'package:tasky/features/domain/use_cases/task/get/get_tasks_use_case.dart';
import 'package:tasky/features/domain/use_cases/user/logout_use_case.dart';
import 'package:tasky/features/presentation/pages/app/home/home/home_state.dart';
import 'package:tasky/injection_container.dart';

class HomeCubit extends Cubit<HomeState> {
  final GetTasksUseCase tasksUseCase;

  final LogoutUseCase logoutUseCase;

  HomeCubit({required this.tasksUseCase, required this.logoutUseCase})
      : super(HomeInitialState());

  Future<void> getTasks() async {
    try {
      emit(TasksLoadingState());
      final accessToken = getIt<SharedPreferenceService>().getAccessToken();
      final tasks = await tasksUseCase.getListOfTasks(accessToken!);
      emit(GetTasksSuccessState(tasks));
    } catch (e) {
      emit(GetTasksErrorState(e.toString()));
    }
  }

  Future<void> logout(String accessToken) async {
    try {
      emit(LogoutLoadingState());
      final accessToken = getIt<SharedPreferenceService>().getAccessToken();
      final refresh = getIt<SharedPreferenceService>().getRefreshToken();
      final response = await logoutUseCase.logout(refresh!, accessToken!);
      emit(LogoutSuccessState(response));
    } catch (e) {
      emit(LogoutErrorState(e.toString()));
    }
  }
}
