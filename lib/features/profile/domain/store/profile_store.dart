import 'package:mobx/mobx.dart';
part 'profile_store.g.dart';

class ProfileStore extends _ProfileStoreBase with _$ProfileStore{
  ProfileStore();
}

abstract class _ProfileStoreBase with Store{
  @observable
  bool loading = false;

  @action
  void setLoading(bool load) => loading = load;
}