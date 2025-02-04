import 'package:dj_pmi/features/features.dart';
import 'package:dj_pmi/internal/local_storage/storage.dart';
import 'package:dj_pmi/common/apis_config/api_config.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

abstract class ServiceLocator {
  static GetIt serviceLocator = GetIt.instance;

  static void initialize() {
    serviceLocator.registerLazySingleton(() => "");

    serviceLocator.registerLazySingleton<Dio>(ApiConfig.get);
    serviceLocator.registerLazySingleton<LocalStorage>(LocalStorageImpl.new);

    //Login Datasource
    serviceLocator.registerLazySingleton<LoginApi>(
      LoginApi.new,
    );
    serviceLocator.registerLazySingleton<LoginRepository>(
      LoginRepository.new,
    );
  }
}
