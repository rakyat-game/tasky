import 'package:tasky/features/domain/entities/task/task_data.dart';

/// Abstract class representing the different states for the New Task feature.
abstract class NewTaskStates {}

/// State representing the initial state of the New Task feature.
class NewTaskInitialState extends NewTaskStates {}

/// State representing the loading state of the New Task feature.
class NewTaskLoadingState extends NewTaskStates {}

/// State representing the success state when a task is updated.
class UpdateTaskSuccessState extends NewTaskStates {
  /// The updated task data.
  final TaskData tasks;

  /// Constructor for [UpdateTaskSuccessState].
  ///
  /// Takes the updated [tasks] as a parameter.
  UpdateTaskSuccessState(this.tasks);
}

/// State representing the success state when an image is uploaded.
class UploadImageSuccessState extends NewTaskStates {
  /// The URL of the uploaded image.
  final String url;

  /// Constructor for [UploadImageSuccessState].
  ///
  /// Takes the [url] of the uploaded image as a parameter.
  UploadImageSuccessState(this.url);
}

/// State representing the error state when updating a task fails.
class ErrorUpdatingTaskState extends NewTaskStates {
  /// The error message.
  final String message;

  /// Constructor for [ErrorUpdatingTaskState].
  ///
  /// Takes the error [message] as a parameter.
  ErrorUpdatingTaskState(this.message);
}