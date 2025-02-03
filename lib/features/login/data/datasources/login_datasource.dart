import 'package:dj_pmi/common/dependency_injection/locator.dart';
import 'package:dio/dio.dart';

class LoginDatasource {
  final dio = locator<Dio>();

  Future<Response> login(Map<String, dynamic> data) async {
    return dio.post('/login', data: data);
  }
}
