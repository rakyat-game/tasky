import 'package:bloc/bloc.dart';
import 'package:tasky/features/domain/use_cases/todos_use_case.dart';
import 'package:tasky/features/presentation/pages/app/home/home/todo_states.dart';

class HomeCubit extends Cubit<HomeState> {
  final TodosUseCase todosUseCase;

  HomeCubit({required this.todosUseCase}) : super(HomeInitialState());

  Future<void> getTasks({required String accessToken}) async {
    try {
      emit(TaskLoadingState());
      final tasks = await todosUseCase.getListOfTasks(accessToken);
      emit(TasksGetSuccessState(tasks));
    } catch (e) {
      emit(TaskErrorState(e.toString()));
    }
  }
}
