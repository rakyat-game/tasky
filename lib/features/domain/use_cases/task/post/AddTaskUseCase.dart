import 'package:tasky/features/domain/entities/task/add_task.dart';
import 'package:tasky/features/domain/entities/task/task_data.dart';
import 'package:tasky/features/domain/repositories/todos_repositories.dart';

class AddTaskUseCase {
  final TasksRepositories tasksRepositories;

  AddTaskUseCase(this.tasksRepositories);

  Future<TaskData> addTask(AddTask task, String accessToken) async {
    return await tasksRepositories.addTask(task, accessToken);
  }
}
