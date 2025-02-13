import 'package:mobx/mobx.dart';
part 'home_store.g.dart';

class HomeStore extends _HomeStoreBase with _$HomeStore{
  HomeStore();
}

abstract class _HomeStoreBase with Store{
  @observable
  bool loading = false;

  @action
  void setLoading(bool load) => loading = load;
}