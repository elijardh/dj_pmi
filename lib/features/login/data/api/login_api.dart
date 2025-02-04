import 'package:dj_pmi/common/dependency_injection/service_locator.dart';
import 'package:dio/dio.dart';

class LoginApi {
  final dio = ServiceLocator.serviceLocator<Dio>();

  Future<Response> login(Map<String, dynamic> data) async {
    return dio.post('/login', data: data);
  }
}
