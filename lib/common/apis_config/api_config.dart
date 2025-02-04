import 'package:dj_pmi/common/configurations/configurations.dart';
import 'package:dj_pmi/common/apis_config/interceptors.dart';
import 'package:dio/dio.dart';

class ApiConfig {
  static Dio get() {
    final options = BaseOptions(
      baseUrl: Configuration.getBaseUrl,
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 3),
    );

    final dio = Dio(options);
    dio.interceptors.add(DiagnosticInterceptor());

    return dio;
  }
}
