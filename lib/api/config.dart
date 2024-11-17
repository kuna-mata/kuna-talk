import 'package:dio/dio.dart';

import 'package:kuna_talk/utils/env.dart';

class DioClient {
  // Private constructor
  DioClient._internal();

  // Static instance of the DioSingleton
  static final DioClient _instance = DioClient._internal();

  // Public factory constructor to return the singleton instance
  factory DioClient() {
    return _instance;
  }

  // Dio instance
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: Env.baseUrl,
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 3),
      contentType: 'application/json; charset=utf-8',
      responseType: ResponseType.json,
    ),
  );

  // Getter for Dio instance
  Dio get dio => _dio;
}
