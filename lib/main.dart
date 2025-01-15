import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tasky/features/data/data_sources/shared_preference.dart';
import 'package:tasky/features/presentation/manager/bloc_observer.dart';
import 'package:tasky/features/presentation/manager/todos/home/home_cubit.dart';
import 'package:tasky/features/presentation/manager/user/auth_cubit.dart';
import 'package:tasky/injection_container.dart';
import 'package:tasky/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();
  final sharedPrefService = SharedPreferenceService(prefs);
  setup(sharedPrefService);
  final accessToken = sharedPrefService.getAccessToken();

  Bloc.observer = StateObserver();
  runApp(MyApp(token: accessToken));
}

class MyApp extends StatelessWidget {
  final String? token;
  const MyApp({super.key, this.token});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<UserAuthCubit>()),
        BlocProvider(create: (context) => getIt<HomeCubit>()),
      ],
      child: MaterialApp(
        initialRoute: getInitialRoute(token),
        onGenerateRoute: RouteGenerator.generateRoute,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
        ),
      ),
    );
  }

  String getInitialRoute(String? token) {
    if (token == null) {
      return RouteGenerator.onBoarding;
    } else {
      return RouteGenerator.home;
    }
  }
}
