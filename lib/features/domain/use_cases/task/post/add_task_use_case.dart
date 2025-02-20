import 'package:tasky/features/data/repositories/todos_repositories_impl.dart';
import 'package:tasky/features/domain/entities/task/add_task.dart';
import 'package:tasky/features/domain/entities/task/task_data.dart';

/// Use case for adding a task.
class AddTaskUseCase {
  final TasksRepositoriesImpl tasksRepositories;

  /// Constructor for `AddTaskUseCase`.
  ///
  /// Takes an instance of `TasksRepositoriesImpl`.
  AddTaskUseCase(this.tasksRepositories);

  /// Adds a task using the provided [task] and [accessToken].
  ///
  /// Returns a [Future] that completes with the added [TaskData].
  Future<TaskData> addTask(AddTask task, String accessToken) async {
    return await tasksRepositories.addTask(task, accessToken);
  }
}