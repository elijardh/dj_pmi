import 'package:dj_pmi/common/models/models.dart';

class SignupLocalDataProvider {
  final LocalDataProvider _provider;

  SignupLocalDataProvider(this._provider);

  Future<Map<String, dynamic>?> getProfiles() async {
    return _provider.get('profiles');
  }
}
