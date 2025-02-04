import 'package:dj_pmi/common/dependency_injection/service_locator.dart';
import 'package:dj_pmi/common/exception/dj_exception.dart';
import 'package:dj_pmi/features/login/data/api/login_api.dart';
import 'package:dj_pmi/features/login/data/models/login_res.dart';
import 'package:dio/dio.dart';

class LoginRepository {
  final dataSource = ServiceLocator.serviceLocator<LoginApi>();

  Future<LoginResponse> login(Map<String, dynamic> data) async {
    try {
      final res = await dataSource.login(data);
      if (res.statusCode! > 199 && res.statusCode! < 300) {
        return LoginResponse.fromJson(res.data as Map<String, dynamic>);
      }

      throw DjException.fromResponse(res);
    } on DioException catch (e) {
      throw DjException.fromDioException(e);
    } catch (e) {
      if (e is DjException) {
        rethrow;
      }

      throw DjException(message: e.toString());
    }
  }
}
