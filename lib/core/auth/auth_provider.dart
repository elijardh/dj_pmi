import 'package:dj_pmi/common/dependency_injection/locator.dart';
import 'package:dj_pmi/internal/local_storage/storage.dart';

abstract class AuthProvider {
  Future<bool> isUserLoggedIn();

  Future<void> saveUserInfo();

  Future<Map> getUserInfo();

  Future<void> logOutUser();
}

class AuthProviderImpl extends AuthProvider {
  final _storage = locator<LocalStorage>();

  @override
  Future<Map> getUserInfo() {
    // TODO: implement getUserInfo
    throw UnimplementedError();
  }

  @override
  Future<bool> isUserLoggedIn() {
    // TODO: implement isUserLoggedIn
    throw UnimplementedError();
  }

  @override
  Future<void> logOutUser() {
    // TODO: implement logOutUser
    throw UnimplementedError();
  }

  @override
  Future<void> saveUserInfo() {
    // TODO: implement saveUserInfo
    throw UnimplementedError();
  }
}
