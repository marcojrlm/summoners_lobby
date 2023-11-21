import 'package:flutter_modular/flutter_modular.dart';
import 'package:lol_stats/app/modules/authModule/data/dao/authDao.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthDomain {
  dynamic getAndNavigateToSummunersPage(String summonersName) async {
    try {
      var response = await AuthDao().findSummoner(summonersName);

      final prefs = await SharedPreferences.getInstance();
      await prefs.setString("session", response.body);

      Modular.to.navigate('/lobby/');
    } catch (error) {
      print(error);
    }
  }
}
