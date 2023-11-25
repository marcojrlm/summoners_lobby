import 'package:lol_stats/app/modules/lobbyModule/entities/summonerStats.dart';
import 'package:mobx/mobx.dart';

part 'lobbyController.g.dart';

class LobbyController = LobbyControllerBase with _$LobbyController;

abstract class LobbyControllerBase with Store {
  @observable
  late Observable<SummonerStats?> _summonerStats =
      Observable<SummonerStats?>(null);

  @action
  void setSummonerStats(SummonerStats stats) {
    _summonerStats.value = stats;
  }

  SummonerStats? getSummonerStats() {
    return _summonerStats.value;
  }
}
