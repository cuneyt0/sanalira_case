// true
import 'package:sanaliracase/core/network/network_builder.dart';

bool? kApiReleaseMode = false;

class NetworkClient {
  static final NetworkClient instance = NetworkClient();
  // FONKSYİON
  Future<NetworkManager> networkClient() async {
    return NetworkManager(
        'https://api.sanalira.com/', 'https://api.sanalira.com/',
        setToken: '', apiReleaseMode: kApiReleaseMode);
  }
}

final NetworkManager networkManager = NetworkManager(
    'https://api.sanalira.com/', 'https://api.sanalira.com/',
    setToken: '', apiReleaseMode: kApiReleaseMode);
