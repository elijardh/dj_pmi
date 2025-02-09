import 'package:mobx/mobx.dart';
part 'authentication_store.g.dart';

class AuthenticationStore extends _AuthenticationStoreBase with _$AuthenticationStore{
  AuthenticationStore();
}

abstract class _AuthenticationStoreBase with Store{
  @observable
  bool loading = false;

  @action
  void setLoading(bool load) => loading = load;
}