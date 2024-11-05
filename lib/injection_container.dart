import 'package:get_it/get_it.dart';
import 'package:tasky/features/data/data_sources/dio_client.dart';
import 'package:tasky/features/data/data_sources/user/user_data_sources.dart';
import 'package:tasky/features/data/repositories/user_repositories_impl.dart';
import 'package:tasky/features/domain/use_cases/user_login.dart';
import 'package:tasky/features/presentation/manager/user/user_states.dart';

import 'features/presentation/manager/user/user_cubit.dart';

final getIt = GetIt.instance;

void setup() {
  // Dio Client
  getIt.registerLazySingleton<DioClient>(() => DioClient());

  // Data sources
  getIt.registerLazySingleton<UserDataSource>(() => UserDataSource(getIt()));

  // Repositories
  getIt.registerLazySingleton<UserRepositoryImpl>(
      () => UserRepositoryImpl(getIt()));

  // Use cases
  getIt.registerLazySingleton<UserAuthUseCase>(() => UserAuthUseCase(getIt()));

  // Cubit
  getIt.registerLazySingleton<UserAuthCubit>(() => UserAuthCubit(
        UserInitial(),
        userAuthUseCase: getIt(),
      ));
}
