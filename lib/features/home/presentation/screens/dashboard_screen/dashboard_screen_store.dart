import 'package:mobx/mobx.dart';

part 'dashboard_screen_store.g.dart';

class DashboardScreenStore extends DashboardScreenStoreBase
    with _$DashboardScreenStore {}

abstract class DashboardScreenStoreBase with Store {
  @observable
  int currentIndex = 0;

  @action
  void setCurrentIndex(int value) => currentIndex = value;
}
