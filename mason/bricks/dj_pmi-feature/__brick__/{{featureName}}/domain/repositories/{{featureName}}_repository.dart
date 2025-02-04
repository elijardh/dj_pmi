import 'package:dj_pmi/common/dependency_injection/service_locator.dart';
import 'package:dj_pmi/common/exception/dj_exception.dart';
import 'package:dj_pmi/features/{{featureName}}/data/api/{{featureName}}_api.dart';
import 'package:dj_pmi/features/{{featureName}}/data/models/{{featureName}}_response.dart';
import 'package:dio/dio.dart';

class {{featureName.pascalCase()}}Repository {
  final dataSource = ServiceLocator.serviceLocator<{{featureName.pascalCase()}}Api>();

  Future<{{featureName.pascalCase()}}Response> get() async {
    try {
      final res = await dataSource.get();
      if (res.statusCode! > 199 && res.statusCode! < 300) {
        return {{featureName.pascalCase()}}Response();
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


  Future<{{featureName.pascalCase()}}Response> post(Map<String, dynamic> data) async {
    try {
      final res = await dataSource.post(data);
      if (res.statusCode! > 199 && res.statusCode! < 300) {
        return {{featureName.pascalCase()}}Response();
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