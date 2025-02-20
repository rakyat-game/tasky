import 'package:bloc/bloc.dart';
import 'package:tasky/features/data/data_sources/shared_preference.dart';
import 'package:tasky/features/domain/use_cases/user/profile_use_case.dart';
import 'package:tasky/features/presentation/pages/app/profile/profile/profile_states.dart';
import 'package:tasky/injection_container.dart';

/// A Cubit that manages the state of the user profile.
class ProfileCubit extends Cubit<ProfileStates> {
  final ProfileUseCase profileUseCase;

  /// Creates a [ProfileCubit] with the given [ProfileUseCase].
  ProfileCubit(this.profileUseCase) : super(ProfileInitialState());

  /// Fetches the user profile and updates the state accordingly.
  Future<void> getProfile() async {
    try {
      emit(ProfileLoadingState());
      final accessToken = getIt<SharedPreferenceService>().getAccessToken();
      final res = await profileUseCase.getProfile(accessToken: accessToken!);
      emit(GetProfileSuccessState(res));
    } catch (e) {
      emit(ErrorFetchingProfileState(e.toString()));
    }
  }
}