import 'package:lol_stats/app/core/models/session.dart';
import 'package:lol_stats/app/modules/lobbyModule/data/dao/lobbyDao.dart';

class LobbyDomain {
  void listHistoryMatches() async {
    try {
      Session session = await Session.getSession();

      final response = await LobbyDao().getHistoryMatchesId(session.puuid);

      print(response);
    } catch (error) {
      print(error);
    }
  }
}
