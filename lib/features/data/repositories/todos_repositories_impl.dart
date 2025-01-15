import 'package:tasky/features/data/data_sources/todo/todos_data_source.dart';
import 'package:tasky/features/domain/entities/task/add_task.dart';
import 'package:tasky/features/domain/entities/task/edit_task.dart';
import 'package:tasky/features/domain/entities/task/task_data.dart';
import 'package:tasky/features/domain/repositories/todos_repositories.dart';

class TodosRepositoriesImpl implements TasksRepositories {
  final TodosDataSource dataSource;

  TodosRepositoriesImpl(this.dataSource);

  @override
  Future<TaskData> addTask(AddTask task, String accessToken) {
    final res = dataSource.addTask(task, accessToken);
    return res;
  }

  @override
  Future<TaskData> deleteTask(String taskId, String accessToken) {
    final res = dataSource.deleteTask(taskId, accessToken);
    return res;
  }

  @override
  Future<TaskData> editTask(
      EditTask editedTask, String taskId, String accessToken) {
    final res = dataSource.editTask(editedTask, taskId, accessToken);
    return res;
  }

  @override
  Future<List<TaskData>> getListOfTasks(String accessToken) {
    final res = dataSource.getListOfTasks(accessToken);
    return res;
  }

  @override
  Future<TaskData> getTask(String taskId, String accessToken) {
    final res = dataSource.getTask(taskId, accessToken);
    return res;
  }

  @override
  Future<String> uploadImage(String accessToken, String image) {
    final res = dataSource.uploadImage(accessToken, image);
    return res;
  }
}
