
import 'package:tasky/features/domain/entities/task/task_data.dart';

abstract class ProfileStates {}

class ProfileInitialState extends ProfileStates {}

class ProfileLoadingState extends ProfileStates {}

class GetProfileSuccessState extends ProfileStates {
  final TaskData task;

  GetProfileSuccessState(this.task);
}

class ErrorFetchingState extends ProfileStates {
  final String message;

  ErrorFetchingState(this.message);
}
