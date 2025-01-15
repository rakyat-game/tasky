import 'package:tasky/features/domain/entities/task/task_data.dart';

abstract class DetailsState {}

class DetailsInitialState extends DetailsState {}

class DetailsLoadingState extends DetailsState {}

class GetDetailsSuccessState extends DetailsState {
  final TaskData tasks;

  GetDetailsSuccessState(this.tasks);
}

class DetailsErrorState extends DetailsState {
  final String message;

  DetailsErrorState(this.message);
}
