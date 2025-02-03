import 'package:dj_pmi/common/dependency_injection/locator.dart';
import 'package:dj_pmi/common/exception/dj_exception.dart';
import 'package:dj_pmi/features/login/data/models/login_res.dart';
import 'package:dj_pmi/features/login/domain/repositories/login_repository.dart';
import 'package:flutter/cupertino.dart';

class LoginViewmodel extends ChangeNotifier {
  final repository = locator<LoginRepository>();

  UIState _uiState = UIState();

  UIState get uiState => _uiState;

  @protected
  set uiState(UIState state) {
    _uiState = state;
    notifyListeners();
  }

  void login({required String email, required String password}) async {
    try {
      uiState = _uiState.copyWith(loading: true);
      // final res =
      //     await repository.login({"email": email, "password": password});

      await Future.delayed(const Duration(seconds: 2));
      final res = LoginResponse(refreshToken: "refresher");

      uiState = _uiState.copyWith(response: res);
    } on DjException catch (e) {
      uiState = _uiState.copyWith(error: e);
    } finally {
      uiState = _uiState.copyWith(loading: false);
    }
  }
}

class UIState {
  final bool loading;
  final DjException? error;
  final LoginResponse? response;

  UIState({this.loading = false, this.error, this.response});

  UIState copyWith({
    bool? loading,
    DjException? error,
    LoginResponse? response,
  }) {
    return UIState(
      loading: loading ?? this.loading,
      error: error ?? this.error,
      response: response ?? this.response,
    );
  }
}
