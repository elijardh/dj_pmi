import 'package:dj_pmi/common/dependency_injection/service_locator.dart';
import 'package:dj_pmi/common/exception/dj_exception.dart';
import 'package:dj_pmi/features/onboarding/data/models/onboarding_response.dart';
import 'package:dj_pmi/features/onboarding/domain/repositories/onboarding_repository.dart';
import 'package:flutter/material.dart';

class OnboardingViewmodel extends ChangeNotifier {
  final repository = ServiceLocator.serviceLocator<OnboardingRepository>();

  OnboardingUIState _uiState = OnboardingUIState();

  OnboardingUIState get uiState => _uiState;

  @protected
  set uiState(OnboardingUIState state) {
    _uiState = state;
    notifyListeners();
  }

  void get() async {
    try {
      uiState = _uiState.copyWith(loading: true);
      final res =
          await repository.get();

      final res2 = OnboardingResponse();

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

      final res2 = OnboardingResponse();

      uiState = _uiState.copyWith(response: res2);
    } on DjException catch (e) {
      uiState = _uiState.copyWith(error: e);
    } finally {
      uiState = _uiState.copyWith(loading: false);
    }
  }


}

class OnboardingUIState {
  final bool loading;
  final DjException? error;
  final OnboardingResponse? response;

  OnboardingUIState({this.loading = false, this.error, this.response});

  OnboardingUIState copyWith({
    bool? loading,
    DjException? error,
    OnboardingResponse? response,
  }) {
    return OnboardingUIState(
      loading: loading ?? this.loading,
      error: error ?? this.error,
      response: response ?? this.response,
    );
  }
}