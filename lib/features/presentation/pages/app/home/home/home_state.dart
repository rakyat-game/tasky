import 'package:tasky/features/domain/entities/logout/logout_response.dart';
import 'package:tasky/features/domain/entities/task/task_data.dart';

/// Represents the base state for the Home feature.
abstract class HomeState {}

/// Initial state of the Home feature.
class HomeInitialState extends HomeState {}

/// State indicating that tasks are currently being loaded.
class TasksLoadingState extends HomeState {}

/// State indicating that tasks have been successfully retrieved.
class GetTasksSuccessState extends HomeState {
  /// List of retrieved tasks.
  final List<TaskData> tasks;

  /// Constructor for [GetTasksSuccessState].
  GetTasksSuccessState(this.tasks);
}

/// State indicating that logout is currently in progress.
class LogoutLoadingState extends HomeState {}

/// State indicating that logout has been successful.
class LogoutSuccessState extends HomeState {
  /// Response received after a successful logout.
  final LogoutResponse response;

  /// Constructor for [LogoutSuccessState].
  LogoutSuccessState(this.response);
}

/// State indicating that an error occurred during logout.
class LogoutErrorState extends HomeState {
  /// Error message describing the logout failure.
  final String message;

  /// Constructor for [LogoutErrorState].
  LogoutErrorState(this.message);
}

/// State indicating that an error occurred while retrieving tasks.
class GetTasksErrorState extends HomeState {
  /// Error message describing the task retrieval failure.
  final String message;

  /// Constructor for [GetTasksErrorState].
  GetTasksErrorState(this.message);
}