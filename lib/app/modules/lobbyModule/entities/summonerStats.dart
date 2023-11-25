import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class SummonerStats {
  final String leagueId;
  final String queueType;
  final String tier;
  final String rank;
  final String summonerId;
  final String summonerName;
  final int leaguePoints;
  final int wins;
  final int losses;
  final bool veteran;
  final bool inactive;
  final bool freshBlood;
  final bool hotStreak;
  late int? profileIconId;

  SummonerStats({
    required this.leagueId,
    required this.queueType,
    required this.tier,
    required this.rank,
    required this.summonerId,
    required this.summonerName,
    required this.leaguePoints,
    required this.wins,
    required this.losses,
    required this.veteran,
    required this.inactive,
    required this.freshBlood,
    required this.hotStreak,
    this.profileIconId,
  });
}
