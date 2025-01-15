import 'package:tasky/features/domain/entities/task/task_data.dart';
import 'package:tasky/features/domain/repositories/todos_repositories.dart';

class DeleteTaskUseCase {
  final TasksRepositories tasksRepositories;

  DeleteTaskUseCase(this.tasksRepositories);

  Future<TaskData> deleteTask(String taskId, String accessToken) async {
    return await tasksRepositories.deleteTask(taskId, accessToken);
  }
}