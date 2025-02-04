import 'package:dj_pmi/common/dependency_injection/service_locator.dart';
import 'package:dio/dio.dart';

class {{featureName.pascalCase()}}Api {

  final dio = ServiceLocator.serviceLocator<Dio>();

  Future<Response> get() async {
    return dio.get('{{featureName}}/get',);
  }

  Future<Response> post(Map<String, dynamic> data) async {
    return dio.post('{{featureName}}/post', data: data);
  }

}