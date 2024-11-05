import 'package:dio/dio.dart';
import 'package:tasky/core/constants/endpoints.dart';
import 'package:tasky/features/data/data_sources/dio_client.dart';
import 'package:tasky/features/domain/entities/auth/login_response.dart';
import 'package:tasky/features/domain/entities/auth/register_response.dart';
import 'package:tasky/features/domain/entities/auth/user_register.dart';
import 'package:tasky/features/domain/entities/logout/logout_response.dart';
import 'package:tasky/features/domain/entities/user/user_data.dart';

class AuthDataSource {
  final DioClient dioClient;

  AuthDataSource(this.dioClient);

  // replace this with the dio
  Future<LoginResponse> login(String phone, String password) async {
    try {
      final response = await dioClient.dio
          .post('/auth/login', data: {'phone': phone, 'password': password});
      print("This for debug the code to know if the data is here $response");

      if (response.statusCode == 201) {
        // success status code is 200 or 201
        print("Now the auth is logged in");
        return LoginResponse.fromJson(response.data);
      } else {
        throw Exception('Failed to login'); // Throw an exception here
      }
    } on DioException catch (e) {
      throw Exception(e.response?.data['message'] ?? 'Network error');
    }
  }

  Future<RegisterResponse> register(UserRegister user) async {
    try {
      final response =
          await dioClient.dio.post('/auth/login', data: user.toJson());
      print("This for debug the code to know if the data is here $response");
      if (response.statusCode == 201 || response.statusCode == 200) {
        print("Now the auth is registerd in");
        return RegisterResponse.fromJson(response.data);
      } else {
        throw Exception('Failed to register'); // Throw an exception here
      }
    } on DioException catch (e) {
      throw Exception(e.response?.data['message'] ?? 'Network error');
    }
  }

  Future<LogoutResponse> logout(String refreshToken, String accessToken) async {
    try {
      final response = await dioClient.dio.post('/auth/logout',
          data: {'token': refreshToken},
          options: Options(headers: {'Authorization': 'Bearer $accessToken'}));
      print("This for debug the code to know if the data is here $response");
      if (response.statusCode == 200 || response.statusCode == 201) {
        print("User successfully logged out.");
        return LogoutResponse.fromJson(response.data);
      } else {
        throw Exception('Failed to logout');
      }
    } on DioException catch (e) {
      print("Logout error: ${e.response?.data}");
      throw Exception(e.response?.data['message'] ?? 'Network error');
    }
  }

  Future<UserData> profile(String accessToken) async {
    try {
      final response = await dioClient.dio.get(ApiEndpoints.profile,
          options: Options(headers: {'Authorization': 'Bearer $accessToken'}));
      print("This for debug the code to know if the data is here $response");
      if (response.statusCode == 200 || response.statusCode == 201) {
        print("User successfully logged out.");
        return UserData.fromJson(response.data);
      } else {
        throw Exception('Failed to logout');
      }
    } on DioException catch (e) {
      print("Logout error: ${e.response?.data}");
      throw Exception(e.response?.data['message'] ?? 'Network error');
    }
  }

  Future<String> refreshToken(String refreshToken) async {
    try {
      final response = await dioClient.dio.get(ApiEndpoints.refreshToken,
          queryParameters: {'token': refreshToken});
      print("This for debug the code to know if the data is here $response");
      if (response.statusCode == 200 || response.statusCode == 201) {
        print("User successfully logged out.");
        return response.data['access_token'];
      } else {
        throw Exception('Failed to logout');
      }
    } on DioException catch (e) {
      print("Logout error: ${e.response?.data}");
      throw Exception(e.response?.data['message'] ?? 'Network error');
    }
  }
}
