import 'package:bloc/bloc.dart';
import 'package:tasky/features/domain/use_cases/todos_use_case.dart';
import 'package:tasky/features/presentation/pages/app/profile/profile/todo_states.dart';

class ProfileCubit extends Cubit<ProfileStates> {
  final TodosUseCase todosUseCase;

  ProfileCubit(super.initialState, {required this.todosUseCase});

  Future<void> getTasks({required String accessToken}) async {}
}
