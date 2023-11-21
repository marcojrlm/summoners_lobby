import 'package:lol_stats/app/core/api/api.dart';

class LobbyDao {
  Future getHistoryMatchesId(String puuid) async {
    final response = await Api(
            path: 'match/v5/matches/by-puuid/$puuid/idsGet', method: 'GET')
        .connectionBr1();

    return response;
  }
}
