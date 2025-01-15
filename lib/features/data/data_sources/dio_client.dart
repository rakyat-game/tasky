import 'package:dio/dio.dart';

/// A client for making HTTP requests using the Dio package.
class DioClient {
  late Dio dio;

  /// Constructs a [DioClient] and initializes the Dio instance with default options.
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