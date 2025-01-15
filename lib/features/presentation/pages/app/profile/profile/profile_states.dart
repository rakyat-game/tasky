import 'package:tasky/features/domain/entities/user/user_data.dart';

abstract class ProfileStates {}

class ProfileInitialState extends ProfileStates {}

class ProfileLoadingState extends ProfileStates {}

class GetProfileSuccessState extends ProfileStates {
  final UserData userData;

  GetProfileSuccessState(this.userData);
}

class ErrorFetchingProfileState extends ProfileStates {
  final String message;

  ErrorFetchingProfileState(this.message);
}
