import 'package:tasky/features/domain/entities/task/edit_task.dart';
import 'package:tasky/features/domain/entities/task/task_data.dart';
import 'package:tasky/features/domain/repositories/todos_repositories.dart';

class EditTaskUseCase {
  final TasksRepositories tasksRepository;

  EditTaskUseCase(this.tasksRepository);

  Future<TaskData> editTask(
      {required EditTask editedTask,
      required String taskId,
      required String accessToken}) async {
    return await tasksRepository.editTask(editedTask, taskId, accessToken);
  }
}
