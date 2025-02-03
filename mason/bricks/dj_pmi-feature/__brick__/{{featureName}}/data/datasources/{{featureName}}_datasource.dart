import 'package:dj_pmi/common/dependency_injection/locator.dart';
import 'package:dio/dio.dart';

class {{featureName.pascalCase()}}Datasource {

  final dio = locator<Dio>();

  Future<Response> get() async {
    return dio.get('{{featureName}}/get',);
  }

  Future<Response> post(Map<String, dynamic> data) async {
    return dio.post('{{featureName}}/post', data: data);
  }

}