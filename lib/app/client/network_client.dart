import 'package:sanaliracase/core/network/network_builder.dart';

bool? kApiReleaseMode = true;

class NetworkClient {
  static final NetworkClient instance = NetworkClient();

  Future<NetworkManager> networkClient() async {
    return NetworkManager(
        'https://api.sanalira.com/', 'https://api.sanalira.com/',
        setToken: '', apiReleaseMode: kApiReleaseMode);
  }
}

final NetworkManager networkManager = NetworkManager(
    'https://api.sanalira.com/', 'https://api.sanalira.com/',
    setToken: '', apiReleaseMode: kApiReleaseMode);
