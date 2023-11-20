import 'package:lol_stats/app/core/api/api.dart';

class AuthDao {
  Future findSummoner() async {
    final response = await Api(path: '/summoner/v4/summoners/by-name/FiatUno2013', method: 'GET').connection();
  }
}
