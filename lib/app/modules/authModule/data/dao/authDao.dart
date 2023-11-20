import 'package:lol_stats/app/core/api/api.dart';

class AuthDao {
  Future findSummoner(String summonersName) async {
    final response = await Api(
            path: '/summoner/v4/summoners/by-name/$summonersName',
            method: 'GET')
        .connection();
    return response;
  }
}
