import 'package:bloc/bloc.dart';
import 'package:tasky/features/domain/entities/task/add_task.dart';
import 'package:tasky/features/domain/entities/task/edit_task.dart';
import 'package:tasky/features/domain/use_cases/task/post/AddTaskUseCase.dart';
import 'package:tasky/features/domain/use_cases/task/post/DeleteTaskUseCase.dart';
import 'package:tasky/features/domain/use_cases/task/post/EditTaskUseCase.dart';
import 'package:tasky/features/domain/use_cases/task/post/UploadImageUseCase.dart';

import 'new_task_states.dart';

class NewTaskCubit extends Cubit<NewTaskStates> {
  final AddTaskUseCase addTaskUseCase;
  final EditTaskUseCase editTaskUseCase;
  final DeleteTaskUseCase deleteTaskUseCase;
  final UploadImageUseCase uploadImageUseCase;

  NewTaskCubit(this.addTaskUseCase, this.editTaskUseCase,
      this.deleteTaskUseCase, this.uploadImageUseCase)
      : super(NewTaskInitialState());

  Future<void> uploadImage(String accessToken, String image) async {
    try {
      emit(NewTaskLoadingState());
      final url = await uploadImageUseCase.uploadImage(accessToken, image);
      emit(UploadImageSuccessState(url));
    } catch (e) {
      ErrorUpdatingTaskState(e.toString());
    }
  }

  Future<void> addTask(AddTask newTask, String accessToken) async {
    try {
      emit(NewTaskLoadingState());
      final task = await addTaskUseCase.addTask(newTask, accessToken);
      emit(UpdateTaskSuccessState(task));
    } catch (e) {
      ErrorUpdatingTaskState(e.toString());
    }
  }

  Future<void> getTask(
      EditTask editedTask, String taskId, String accessToken) async {
    try {
      emit(NewTaskLoadingState());
      final task = await editTaskUseCase.editTask(
          editedTask: editedTask, taskId: taskId, accessToken: accessToken);
      emit(UpdateTaskSuccessState(task));
    } catch (e) {
      ErrorUpdatingTaskState(e.toString());
    }
  }

  Future<void> deleteTask(String taskId, String accessToken) async {
    try {
      emit(NewTaskLoadingState());
      final task = await deleteTaskUseCase.deleteTask(taskId, accessToken);
      emit(UpdateTaskSuccessState(task));
    } catch (e) {
      ErrorUpdatingTaskState(e.toString());
    }
  }
}
