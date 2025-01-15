import 'package:tasky/features/domain/entities/logout/logout_response.dart';
import 'package:tasky/features/domain/entities/task/task_data.dart';

abstract class HomeState {}

class HomeInitialState extends HomeState {}

class TasksLoadingState extends HomeState {}

class GetTasksSuccessState extends HomeState {
  final List<TaskData> tasks;

  GetTasksSuccessState(this.tasks);
}

class LogoutLoadingState extends HomeState {}

class LogoutSuccessState extends HomeState {
  final LogoutResponse response;

  LogoutSuccessState(this.response);
}

class LogoutErrorState extends HomeState {
  final String message;

  LogoutErrorState(this.message);
}

class GetTasksErrorState extends HomeState {
  final String message;

  GetTasksErrorState(this.message);
}
