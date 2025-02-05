import 'package:dj_pmi/common/models/models.dart';

class SignupRemoteDataProvider {
  final RemoteDataProvider _provider;

  SignupRemoteDataProvider(this._provider);

  Future<ClientResponse> signupDj(Map<String, dynamic> data) async {
    return _provider.post('/v1/signup/dj', data: data);
  }

  Future<ClientResponse> signupArtist(Map<String, dynamic> data) async {
    return _provider.post('/v1/signup/artist', data: data);
  }
}
