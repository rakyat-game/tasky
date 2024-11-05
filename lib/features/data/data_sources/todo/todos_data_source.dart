import 'package:dio/dio.dart';
import 'package:tasky/core/constants/endpoints.dart';
import 'package:tasky/features/data/data_sources/dio_client.dart';
import 'package:tasky/features/domain/entities/task/add_task.dart';
import 'package:tasky/features/domain/entities/task/edit_task.dart';
import 'package:tasky/features/domain/entities/task/task_data.dart';

class TodosDataSource {
  final DioClient dioClient;

  TodosDataSource(this.dioClient);

  Future<TaskData> addTask(AddTask task, String accessToken) async {
    try {
      final response = await dioClient.dio.post(ApiEndpoints.todo,
          data: task.toJson(),
          options: Options(headers: {'Authorization': 'Bearer $accessToken'}));
      if (response.statusCode == 200 || response.statusCode == 201) {
        return TaskData.fromJson(response.data);
      } else {
        throw Exception('Failed to add the task');
      }
    } on DioException catch (e) {
      throw Exception(e.response?.data['message'] ?? 'Network error');
    }
  }

  Future<TaskData> deleteTask(String taskId, String accessToken) async {
    try {
      final response = await dioClient.dio.delete(ApiEndpoints.todo + taskId,
          options: Options(headers: {'Authorization': 'Bearer $accessToken'}));
      if (response.statusCode == 200 || response.statusCode == 201) {
        return TaskData.fromJson(response.data);
      } else {
        throw Exception('Failed to delete the task');
      }
    } on DioException catch (e) {
      throw Exception(e.response?.data['message'] ?? 'Network error');
    }
  }

  Future<TaskData> editTask(
      EditTask editedTask, String taskId, String accessToken) async {
    try {
      final response = await dioClient.dio.put(ApiEndpoints.todo + taskId,
          data: editedTask,
          options: Options(headers: {'Authorization': 'Bearer $accessToken'}));
      if (response.statusCode == 200 || response.statusCode == 201) {
        return TaskData.fromJson(response.data);
      } else {
        throw Exception('Failed to delete the task');
      }
    } on DioException catch (e) {
      throw Exception(e.response?.data['message'] ?? 'Network error');
    }
  }

  Future<List<TaskData>> getListOfTasks(String accessToken) async {
    try {
      final response = await dioClient.dio.get(ApiEndpoints.list,
          options: Options(headers: {'Authorization': 'Bearer $accessToken'}));
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<dynamic> jsonData = response.data;
        final List<TaskData> tasks =
            jsonData.map((task) => TaskData.fromJson(task)).toList();
        return tasks;
      } else {
        throw Exception('Failed to delete the task');
      }
    } on DioException catch (e) {
      throw Exception(e.response?.data['message'] ?? 'Network error');
    }
  }

  Future<TaskData> getTask(String taskId, String accessToken) async {
    try {
      final response = await dioClient.dio.get(ApiEndpoints.todo + taskId,
          options: Options(headers: {'Authorization': 'Bearer $accessToken'}));
      if (response.statusCode == 200 || response.statusCode == 201) {
        return TaskData.fromJson(response.data);
      } else {
        throw Exception('Failed to delete the task');
      }
    } on DioException catch (e) {
      throw Exception(e.response?.data['message'] ?? 'Network error');
    }
  }

  Future<String> uploadImage(String accessToken, String image) async {
    try {
      final response = await dioClient.dio.get(ApiEndpoints.upload,
          options: Options(headers: {'Authorization': 'Bearer $accessToken'}));
      if (response.statusCode == 200 || response.statusCode == 201) {
        return response.data;
      } else {
        throw Exception('Failed to delete the task');
      }
    } on DioException catch (e) {
      throw Exception(e.response?.data['message'] ?? 'Network error');
    }
  }
}
