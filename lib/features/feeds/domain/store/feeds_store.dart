import 'package:mobx/mobx.dart';
part 'feeds_store.g.dart';

class FeedsStore extends _FeedsStoreBase with _$FeedsStore{
  FeedsStore();
}

abstract class _FeedsStoreBase with Store{
  @observable
  bool loading = false;

  @action
  void setLoading(bool load) => loading = load;
}