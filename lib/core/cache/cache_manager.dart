import 'dart:convert';

import 'package:sanaliracase/app/data/local/model.dart/user_info.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheManager {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  Future<bool> saveLoginResponse(UserInfo responseModel) async {
    // Obtain shared preferences.
    final SharedPreferences prefs = await _prefs;
    await prefs.setString(CacheManagerKey.LOGINRESPONSE.toString(),
        jsonEncode(responseModel.toJson()));

    return true;
  }

  Future<dynamic> getLoginResponse() async {
    final SharedPreferences prefs = await _prefs;
    return prefs.getString(CacheManagerKey.LOGINRESPONSE.toString());
  }

  Future<bool> logout() async {
    final SharedPreferences prefs = await _prefs;
    prefs.remove(CacheManagerKey.LOGINRESPONSE.toString());
    return true;
  }
}

enum CacheManagerKey { LOGINRESPONSE }
