import 'package:dj_pmi/core/local_storage/storage.dart';
import 'package:dj_pmi/common/apis_config/api_config.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

abstract class ServiceLocator {
  static GetIt serviceLocator = GetIt.instance;

  static void initialize() {
    serviceLocator.registerLazySingleton<GlobalKey<NavigatorState>>(
      () => GlobalKey<NavigatorState>(),
    );

    serviceLocator.registerLazySingleton<Dio>(ApiConfig.get);
    serviceLocator.registerLazySingleton<LocalStorage>(LocalStorageImpl.new);
  }
}
