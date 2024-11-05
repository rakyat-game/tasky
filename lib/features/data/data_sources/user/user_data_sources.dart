import 'package:dio/dio.dart';
import 'package:tasky/features/data/data_sources/dio_client.dart';
import 'package:tasky/features/domain/entities/auth/login_response.dart';
import 'package:tasky/features/domain/entities/auth/user_register.dart';

class UserDataSource {
  final DioClient dioClient;

  UserDataSource(this.dioClient);

  // replace this with the dio
  Future<LoginResponse?> login(String phone, String password) async {
    try {
      final response = await dioClient.dio
          .post('/auth/login', data: {'phone': phone, 'password': password});
      print("This for debug the code to know if the data is here $response");

      if (response.statusCode == 201) { // Typically, success status code is 200 or 201
        print("Now the user is logged in");
        return LoginResponse.fromJson(response.data); // Assume response.data is of type LoginResponse
      } else {
        throw Exception('Failed to login'); // Throw an exception here
      }
    } on DioException catch (e) {
      throw Exception(e.response?.data['message'] ?? 'Network error');
    }
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
