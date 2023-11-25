// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lobbyController.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LobbyController on LobbyControllerBase, Store {
  late final _$_summonerStatsAtom =
      Atom(name: 'LobbyControllerBase._summonerStats', context: context);

  @override
  Observable<SummonerStats?> get _summonerStats {
    _$_summonerStatsAtom.reportRead();
    return super._summonerStats;
  }

  @override
  set _summonerStats(Observable<SummonerStats?> value) {
    _$_summonerStatsAtom.reportWrite(value, super._summonerStats, () {
      super._summonerStats = value;
    });
  }

  late final _$LobbyControllerBaseActionController =
      ActionController(name: 'LobbyControllerBase', context: context);

  @override
  void setSummonerStats(SummonerStats stats) {
    final _$actionInfo = _$LobbyControllerBaseActionController.startAction(
        name: 'LobbyControllerBase.setSummonerStats');
    try {
      return super.setSummonerStats(stats);
    } finally {
      _$LobbyControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
