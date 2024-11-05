import 'package:tasky/features/data/repositories/todos_repositories_impl.dart';
import 'package:tasky/features/domain/entities/task/add_task.dart';
import 'package:tasky/features/domain/entities/task/edit_task.dart';
import 'package:tasky/features/domain/entities/task/task_data.dart';

class TodosUseCase {
  final TodosRepositoriesImpl repositories;

  TodosUseCase(this.repositories);

  Future<List<TaskData>> getListOfTasks(String accessToken) {
    final res = repositories.getListOfTasks(accessToken);
    return res;
  }

  Future<TaskData> getTask(String taskId, String accessToken) {
    final res = repositories.getTask(taskId, accessToken);
    return res;
  }

  Future<TaskData> addTask(AddTask task, String accessToken) {
    final res = repositories.addTask(task, accessToken);
    return res;
  }

  Future<TaskData> editTask(
      EditTask editedTask, String taskId, String accessToken) {
    final res = repositories.editTask(editedTask, taskId, accessToken);
    return res;
  }

  Future<TaskData> deleteTask(String taskId, String accessToken) {
    final res = repositories.deleteTask(taskId, accessToken);
    return res;
  }

  Future<String> uploadImage(String accessToken, String image) {
    final res = repositories.uploadImage(accessToken, image);
    return res;
  }
}
