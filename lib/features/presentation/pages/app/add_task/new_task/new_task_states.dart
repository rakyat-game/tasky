import 'package:tasky/features/domain/entities/task/task_data.dart';

abstract class NewTaskStates {}

class NewTaskInitialState extends NewTaskStates {}

class NewTaskLoadingState extends NewTaskStates {}

class UpdateTaskSuccessState extends NewTaskStates {
  final TaskData tasks;

  UpdateTaskSuccessState(this.tasks);
}

class UploadImageSuccessState extends NewTaskStates {
  final String url;
  UploadImageSuccessState(this.url);
}

class ErrorUpdatingTaskState extends NewTaskStates {
  final String message;

  ErrorUpdatingTaskState(this.message);
}
