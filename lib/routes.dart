import 'package:flutter/material.dart';
import 'package:tasky/features/presentation/pages/app/app_pages.dart';
import 'package:tasky/features/presentation/pages/auth/auth_pages.dart';
import 'package:tasky/features/presentation/pages/onboarding/onboard_page.dart';

class RouteGenerator {
  static const onBoarding = '/';
  static const login = '/login';
  static const register = '/register';
  static const home = '/home';
  static const profile = '/profile';
  static const details = '/details';
  static const addItem = '/addItem';

  RouteGenerator._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case onBoarding:
        return MaterialPageRoute(builder: (_) => const OnboardPage());
      case login:
        return MaterialPageRoute(builder: (_) => LoginPage());
      case register:
        return MaterialPageRoute(builder: (_) => RegisterPage());
      case home:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case profile:
        return MaterialPageRoute(builder: (_) => const ProfilePage());
      case details:
        return MaterialPageRoute(builder: (_) => const DetailsPage());
      case addItem:
        return MaterialPageRoute(builder: (_) => const NewItemPage());
      default:
        throw FormatException("Route not found");
    }
  }
}

class RouteException implements Exception {
  final String message;

  const RouteException(this.message);
}
