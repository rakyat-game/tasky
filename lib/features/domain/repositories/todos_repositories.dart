import 'package:tasky/features/domain/entities/task/add_task.dart';
import 'package:tasky/features/domain/entities/task/edit_task.dart';
import 'package:tasky/features/domain/entities/task/task_data.dart';

abstract class TodosRepositories {
  Future<List<TaskData>> getListOfTasks(String accessToken);

  Future<TaskData> getTask(String taskId, String accessToken);

  Future<TaskData> addTask(AddTask task, String accessToken);

  Future<TaskData> editTask(
      EditTask editedTask, String taskId, String accessToken);

  Future<TaskData> deleteTask(String taskId, String accessToken);

  Future<String> uploadImage(String accessToken, String image);
}
