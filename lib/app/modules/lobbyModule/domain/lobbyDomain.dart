import 'package:lol_stats/app/core/entities/session.dart';
import 'package:lol_stats/app/modules/lobbyModule/data/lobbyDao.dart';
import 'package:lol_stats/app/modules/lobbyModule/domain/controller/lobbyController.dart';
import 'package:lol_stats/app/modules/lobbyModule/entities/summonerStats.dart';

class LobbyDomain {
  final LobbyController controller = LobbyController();

  void listHistoryMatches() async {
    try {
      Session session = await Session.getSession();

      await LobbyDao().getHistoryMatchesId(session.puuid);
    } catch (error) {
      print(error);
    }
  }

  void getSummonerStats() async {
    try {
      Session session = await Session.getSession();

      SummonerStats stats =
          await LobbyDao().getSummonerStatsBySummonerId(session.id);

      stats.profileIconId = session.profileIconId;

      controller.setSummonerStats(stats);
    } catch (error) {
      print(error);
    }
  }

  double calculateVictory() {
    return 100;
  }

  getProfileIcons(int id) {
    return 'https://ddragon.leagueoflegends.com/cdn/13.23.1/img/profileicon/$id.png';
  }
}
