import 'package:dj_pmi/common/dependency_injection/locator.dart';
import 'package:dj_pmi/common/exception/dj_exception.dart';
import 'package:dj_pmi/features/onboarding/data/datasources/onboarding_datasource.dart';
import 'package:dj_pmi/features/onboarding/data/models/onboarding_response.dart';
import 'package:dio/dio.dart';

class OnboardingRepository {
  final dataSource = locator<OnboardingDatasource>();

  Future<OnboardingResponse> get() async {
    try {
      final res = await dataSource.get();
      if (res.statusCode! > 199 && res.statusCode! < 300) {
        return OnboardingResponse();
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


  Future<OnboardingResponse> post(Map<String, dynamic> data) async {
    try {
      final res = await dataSource.post(data);
      if (res.statusCode! > 199 && res.statusCode! < 300) {
        return OnboardingResponse();
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