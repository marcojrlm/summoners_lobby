import 'package:lol_stats/app/core/api/api.dart';
import 'package:lol_stats/app/modules/authModule/data/authDto.dart';
import 'package:lol_stats/environments/environments.dart';

class AuthDao {
  Future<SessionDTO> findSummoner(String summonersName) async {
    final response = await Api(
            api: Environments.apiBr,
            path: 'summoner/v4/summoners/by-name/$summonersName',
            method: 'GET')
        .connection();
    return SessionDTO.fromResponseBody(response.body);
  }
}
