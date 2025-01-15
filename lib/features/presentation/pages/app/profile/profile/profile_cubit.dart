import 'package:bloc/bloc.dart';
import 'package:tasky/features/data/data_sources/shared_preference.dart';
import 'package:tasky/features/domain/use_cases/user/ProfileUseCase.dart';
import 'package:tasky/features/presentation/pages/app/profile/profile/profile_states.dart';
import 'package:tasky/injection_container.dart';

class ProfileCubit extends Cubit<ProfileStates> {
  final ProfileUseCase profileUseCase;

  ProfileCubit(this.profileUseCase) : super(ProfileInitialState());

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
