import 'package:dj_pmi/common/models/models.dart';

import 'data/local_provider.dart';
import 'data/remote_provider.dart';
import 'models/models.dart';

class SignupRepository {
  final SignupLocalDataProvider _localProvider;
  final SignupRemoteDataProvider _remoteProvider;
  final Connectivity _connectivity;

  SignupRepository({
    required RemoteDataProvider remoteDataProvider,
    required LocalDataProvider localDataProvider,
    required Connectivity connectivity,
  })  : _remoteProvider = SignupRemoteDataProvider(remoteDataProvider),
        _localProvider = SignupLocalDataProvider(localDataProvider),
        _connectivity = connectivity;

  Future<ArtistProfile> getArtistProfile() async {
    if (_connectivity.isConnected) {
      var res = await _remoteProvider.signupArtist({});
      return ArtistProfile.fromJson(res.data as Map<String, dynamic>);
    } else {
      var res = await _localProvider.getProfiles();
      if (res == null) {
        throw Exception('No data found');
      }
      return ArtistProfile.fromJson(res);
    }
  }
}
