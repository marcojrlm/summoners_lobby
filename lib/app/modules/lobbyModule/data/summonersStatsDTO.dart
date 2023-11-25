import 'dart:convert';

import 'package:lol_stats/app/modules/lobbyModule/entities/summonerStats.dart';

class SummonersStatsDTO extends SummonerStats {
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

  SummonersStatsDTO({
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
  }) : super(
            leagueId: leagueId,
            queueType: queueType,
            tier: tier,
            rank: rank,
            summonerId: summonerId,
            summonerName: summonerName,
            leaguePoints: leaguePoints,
            wins: wins,
            losses: losses,
            veteran: veteran,
            inactive: inactive,
            freshBlood: freshBlood,
            hotStreak: hotStreak);

  factory SummonersStatsDTO.fromJson(Map<String, dynamic> json) {
    return SummonersStatsDTO(
      leagueId: json['leagueId'],
      queueType: json['queueType'],
      tier: json['tier'],
      rank: json['rank'],
      summonerId: json['summonerId'],
      summonerName: json['summonerName'],
      leaguePoints: json['leaguePoints'],
      wins: json['wins'],
      losses: json['losses'],
      veteran: json['veteran'],
      inactive: json['inactive'],
      freshBlood: json['freshBlood'],
      hotStreak: json['hotStreak'],
    );
  }

  factory SummonersStatsDTO.fromResponseBody(String responseBody) {
    final List<dynamic> json = jsonDecode(responseBody);
    return SummonersStatsDTO.fromJson(json[0]);
  }

  Map<String, dynamic> toJson() {
    return {
      'leagueId': leagueId,
      'queueType': queueType,
      'tier': tier,
      'rank': rank,
      'summonerId': summonerId,
      'summonerName': summonerName,
      'leaguePoints': leaguePoints,
      'wins': wins,
      'losses': losses,
      'veteran': veteran,
      'inactive': inactive,
      'freshBlood': freshBlood,
      'hotStreak': hotStreak,
    };
  }
}
