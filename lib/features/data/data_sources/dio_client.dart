import 'package:dio/dio.dart';

class DioClient {
  late Dio dio;

  DioClient() {
    dio = Dio(BaseOptions(
        baseUrl: "https://todo.iraqsapp.com",
        connectTimeout: Duration(seconds: 5),
        receiveTimeout: Duration(seconds: 5),
        headers: {
          'Content-Type': 'application/json',
        }));
    dio.interceptors.add(LogInterceptor(responseBody: true));
  }
}
