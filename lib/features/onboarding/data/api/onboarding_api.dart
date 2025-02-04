import 'package:dj_pmi/common/dependency_injection/service_locator.dart';
import 'package:dio/dio.dart';

class OnboardingApi {

  final dio = ServiceLocator.serviceLocator<Dio>();

  Future<Response> get() async {
    return dio.get('onboarding/get',);
  }

  Future<Response> post(Map<String, dynamic> data) async {
    return dio.post('onboarding/post', data: data);
  }

}