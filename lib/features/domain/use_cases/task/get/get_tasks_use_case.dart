import 'package:tasky/features/domain/entities/task/task_data.dart';
import 'package:tasky/features/domain/repositories/todos_repositories.dart';

class GetTasksUseCase {
  final TasksRepositories tasksRepositories;

  GetTasksUseCase(this.tasksRepositories);

  Future<List<TaskData>> getListOfTasks(String accessToken) async {
    return await tasksRepositories.getListOfTasks(accessToken);
  }
}
