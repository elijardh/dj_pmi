import 'package:mobx/mobx.dart';
part '{{featureName}}_store.g.dart';

class {{featureName.pascalCase()}}Store extends _{{featureName.pascalCase()}}StoreBase with _${{featureName.pascalCase()}}Store{
  {{featureName.pascalCase()}}Store();
}

abstract class _{{featureName.pascalCase()}}StoreBase with Store{
  @observable
  bool loading = false;

  @action
  void setLoading(bool load) => loading = load;
}