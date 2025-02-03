import 'package:dj_pmi/features/login/data/datasources/login_datasource.dart';
import 'package:dj_pmi/features/login/domain/repositories/login_repository.dart';
import 'package:dj_pmi/internal/local_storage/storage.dart';
import 'package:dj_pmi/common/network/network.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

class Locator {
  static void initializeLocator() {
    locator.registerLazySingleton(() => "");

    locator.registerLazySingleton<Dio>(Network.get);
    locator.registerLazySingleton<LocalStorage>(LocalStorageImpl.new);

    //Login Datasource
    locator.registerLazySingleton<LoginDatasource>(
      LoginDatasource.new,
    );
    locator.registerLazySingleton<LoginRepository>(
      LoginRepository.new,
    );
  }
}
