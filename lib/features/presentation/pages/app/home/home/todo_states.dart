

import 'package:tasky/features/domain/entities/task/task_data.dart';

abstract class HomeState {}

class HomeInitialState extends HomeState {}

class TaskLoadingState extends HomeState {}

class TasksGetSuccessState extends HomeState {
  final List<TaskData> tasks;

  TasksGetSuccessState(this.tasks);
}

class TaskGetSuccessState extends HomeState {
  final TaskData task;

  TaskGetSuccessState(this.task);
}

class TaskErrorState extends HomeState {
  final String message;

  TaskErrorState(this.message);
}
