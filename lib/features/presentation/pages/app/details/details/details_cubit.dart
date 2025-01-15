import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasky/features/domain/use_cases/task/get/get_task_use_case.dart';
import 'package:tasky/features/presentation/pages/app/details/details/details_states.dart';

class DetailsCubit extends Cubit<DetailsState> {
  final GetTaskUseCase getTaskUseCase;

  DetailsCubit(this.getTaskUseCase) : super(DetailsInitialState());

  Future<void> getTask(String taskId, String accessToken) async {
    try {
      emit(DetailsLoadingState());
      final task = await getTaskUseCase.getTaskById(taskId, accessToken);
      emit(GetDetailsSuccessState(task));
    } catch (e) {
      DetailsErrorState(e.toString());
    }
  }
}
