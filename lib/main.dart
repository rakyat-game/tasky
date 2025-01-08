import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasky/features/presentation/manager/bloc_observer.dart';
import 'package:tasky/features/presentation/manager/todos/home/home_cubit.dart';
import 'package:tasky/features/presentation/manager/user/auth_cubit.dart';
import 'package:tasky/injection_container.dart';
import 'package:tasky/routes.dart';

void main() {
  setup();
  Bloc.observer = StateObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(

      providers: [
        BlocProvider(create: (conetxt) =>getIt<UserAuthCubit>()),
        BlocProvider(create: (conetxt) =>getIt<HomeCubit>()),
        ],
      child: MaterialApp(
        initialRoute: RouteGenerator.onBoarding,
        onGenerateRoute: RouteGenerator.generateRoute,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
        ),
      ),
    );
  }
}
