import 'dart:convert';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:lol_stats/app/modules/authModule/data/authDao.dart';
import 'package:lol_stats/app/modules/authModule/domain/controller/authController.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthDomain {
  final AuthController controller = AuthController();

  dynamic getAndNavigateToSummunersPage(String summonersName) async {
    try {
      controller.setButtonLoading();
      var response = await AuthDao().findSummoner(summonersName);
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString("session", json.encode(response));

      Modular.to.navigate('/lobby/');
    } catch (error) {
      print(error);
    } finally {
      controller.setButtonIdle();
    }
  }
}
