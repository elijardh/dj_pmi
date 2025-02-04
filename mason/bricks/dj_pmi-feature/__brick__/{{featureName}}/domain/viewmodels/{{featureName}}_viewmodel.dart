import 'package:dj_pmi/common/dependency_injection/service_locator.dart';
import 'package:dj_pmi/common/exception/dj_exception.dart';
import 'package:dj_pmi/features/{{featureName}}/data/models/{{featureName}}_response.dart';
import 'package:dj_pmi/features/{{featureName}}/domain/repositories/{{featureName}}_repository.dart';
import 'package:flutter/material.dart';

class {{featureName.pascalCase()}}Viewmodel extends ChangeNotifier {
  final repository = ServiceLocator.serviceLocator<{{featureName.pascalCase()}}Repository>();

  {{featureName.pascalCase()}}UIState _uiState = {{featureName.pascalCase()}}UIState();

  {{featureName.pascalCase()}}UIState get uiState => _uiState;

  @protected
  set uiState({{featureName.pascalCase()}}UIState state) {
    _uiState = state;
    notifyListeners();
  }

  void get() async {
    try {
      uiState = _uiState.copyWith(loading: true);
      final res =
          await repository.get();

      final res2 = {{featureName.pascalCase()}}Response();

      uiState = _uiState.copyWith(response: res2);
    } on DjException catch (e) {
      uiState = _uiState.copyWith(error: e);
    } finally {
      uiState = _uiState.copyWith(loading: false);
    }
  }

  void post(Map<String, dynamic> data) async {
    try {
      uiState = _uiState.copyWith(loading: true);
      final res =
          await repository.post(data);

      final res2 = {{featureName.pascalCase()}}Response();

      uiState = _uiState.copyWith(response: res2);
    } on DjException catch (e) {
      uiState = _uiState.copyWith(error: e);
    } finally {
      uiState = _uiState.copyWith(loading: false);
    }
  }


}

class {{featureName.pascalCase()}}UIState {
  final bool loading;
  final DjException? error;
  final {{featureName.pascalCase()}}Response? response;

  {{featureName.pascalCase()}}UIState({this.loading = false, this.error, this.response});

  {{featureName.pascalCase()}}UIState copyWith({
    bool? loading,
    DjException? error,
    {{featureName.pascalCase()}}Response? response,
  }) {
    return {{featureName.pascalCase()}}UIState(
      loading: loading ?? this.loading,
      error: error ?? this.error,
      response: response ?? this.response,
    );
  }
}