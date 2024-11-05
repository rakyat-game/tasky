import 'package:tasky/features/domain/entities/auth/user_register.dart';

class UserDataSource {
  // replace this with the dio
  Future<Map<String, dynamic>> login(String email, String password) async {
    // Mocking API response
    await Future.delayed(Duration(seconds: 2));
    return {
      'id': 1,
      'name': 'John Doe',
      'email': email,
      'token': 'abcd1234',
    };
  }

  Future<Map<String, dynamic>> register(UserRegister user) async {
    // Mocking API response
    await Future.delayed(Duration(seconds: 2));
    return {
      'id': 1,
      'name': 'John Doe',
      'token': 'abcd1234',
    };
  }
}
