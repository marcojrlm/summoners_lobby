import 'package:lol_stats/app/core/api/api.dart';
import 'package:lol_stats/app/modules/lobbyModule/data/summonersStatsDTO.dart';
import 'package:lol_stats/app/modules/lobbyModule/entities/summonerStats.dart';
import 'package:lol_stats/environments/environments.dart';

class LobbyDao {
  Future getHistoryMatchesId(String puuid) async {
    final response = await Api(
            api: Environments.apiAmericas,
            path: 'match/v5/matches/by-puuid/$puuid/idsGet',
            method: 'GET')
        .connection();
    return response;
  }

  Future<SummonerStats> getSummonerStatsBySummonerId(String summonerId) async {
    final response = await Api(
            api: Environments.apiBr,
            path: 'league/v4/entries/by-summoner/$summonerId',
            method: 'GET')
        .connection();

    return SummonersStatsDTO.fromResponseBody(response.body);
  }
}
