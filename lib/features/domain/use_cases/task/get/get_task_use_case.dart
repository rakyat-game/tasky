import 'package:tasky/features/domain/entities/task/task_data.dart';
import 'package:tasky/features/domain/repositories/todos_repositories.dart';

class GetTaskUseCase {
  final TasksRepositories tasksRepositories;

  GetTaskUseCase(this.tasksRepositories);

  Future<TaskData> getTaskById(String taskId, String accessToken) async {
   return await tasksRepositories.getTask(taskId, accessToken);
  }
}
