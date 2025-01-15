import 'package:get_it/get_it.dart';
import 'package:tasky/features/data/data_sources/auth/auth_data_source.dart';
import 'package:tasky/features/data/data_sources/dio_client.dart';
import 'package:tasky/features/data/data_sources/shared_preference.dart';
import 'package:tasky/features/data/repositories/auth_repositories_impl.dart';
import 'package:tasky/features/data/repositories/todos_repositories_impl.dart';
import 'package:tasky/features/domain/use_cases/auth_use_case.dart';
import 'package:tasky/features/domain/use_cases/todos_use_case.dart';

import 'features/data/data_sources/todo/todos_data_source.dart';
import 'features/presentation/pages/app/home/home/home_cubit.dart';
import 'features/presentation/pages/auth/auth_cubit/auth_cubit.dart';

final getIt = GetIt.instance;

void setup(SharedPreferenceService sharedPrefService) {
  // Dio Client
  getIt.registerLazySingleton<DioClient>(() => DioClient());

  // Data sources
  getIt.registerLazySingleton<AuthDataSource>(() => AuthDataSource(getIt()));
  getIt.registerLazySingleton<TodosDataSource>(() => TodosDataSource(getIt()));

  // Repositories
  getIt.registerLazySingleton<AuthRepositoryImpl>(
      () => AuthRepositoryImpl(getIt()));
  getIt.registerLazySingleton<TodosRepositoriesImpl>(
      () => TodosRepositoriesImpl(getIt()));

  // Use cases
  getIt.registerLazySingleton<UserAuthUseCase>(() => UserAuthUseCase(getIt()));
  getIt.registerLazySingleton(() => TodosUseCase(getIt()));

  // Cubit
  getIt.registerLazySingleton<UserAuthCubit>(
        () => UserAuthCubit(userAuthUseCase: getIt()),
  );
  getIt.registerLazySingleton<HomeCubit>(
    () => HomeCubit(todosUseCase: getIt())
  );

  getIt.registerSingleton<SharedPreferenceService>(sharedPrefService);

}
