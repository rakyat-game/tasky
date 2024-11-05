import 'package:get_it/get_it.dart';
import 'package:tasky/features/data/data_sources/auth/auth_data_source.dart';
import 'package:tasky/features/data/data_sources/dio_client.dart';
import 'package:tasky/features/data/repositories/auth_repositories_impl.dart';
import 'package:tasky/features/domain/use_cases/user_use_case.dart';
import 'package:tasky/features/presentation/manager/user/user_states.dart';

import 'features/presentation/manager/user/user_cubit.dart';

final getIt = GetIt.instance;

void setup() {
  // Dio Client
  getIt.registerLazySingleton<DioClient>(() => DioClient());

  // Data sources
  getIt.registerLazySingleton<AuthDataSource>(() => AuthDataSource(getIt()));

  // Repositories
  getIt.registerLazySingleton<AuthRepositoryImpl>(
      () => AuthRepositoryImpl(getIt()));

  // Use cases
  getIt.registerLazySingleton<UserAuthUseCase>(() => UserAuthUseCase(getIt()));

  // Cubit
  getIt.registerLazySingleton<UserAuthCubit>(() => UserAuthCubit(
        UserInitial(),
        userAuthUseCase: getIt(),
      ));
}
