import 'package:lol_stats/app/modules/authModule/data/dao/authDao.dart';

class AuthDomain {
  dynamic getAndNavigateToSummunersPage(String summonersName) async {
    try {
      print(summonersName);
      var response = await AuthDao().findSummoner(summonersName);
    } catch (error) {
      print(error);
    }
  }
}
