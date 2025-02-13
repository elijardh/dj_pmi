import 'package:mobx/mobx.dart';
part 'music_player_store.g.dart';

class MusicPlayerStore extends _MusicPlayerStoreBase with _$MusicPlayerStore{
  MusicPlayerStore();
}

abstract class _MusicPlayerStoreBase with Store{
  @observable
  bool loading = false;

  @action
  void setLoading(bool load) => loading = load;
}