import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class Session {
  late final String id;
  late final String accountId;
  late final String puuid;
  late final String name;
  late final int profileIconId;
  late final int summonerLevel;

  Session({
    required this.id,
    required this.accountId,
    required this.puuid,
    required this.name,
    required this.profileIconId,
    required this.summonerLevel,
  });

  static Future<Session> getSession() async {
    final prefs = await SharedPreferences.getInstance();
    final sessionData = prefs.getString("session");

    if (sessionData != null) {
      final Map<String, dynamic> sessionMap = Map<String, dynamic>.from(
        json.decode(sessionData),
      );

      return Session(
        id: sessionMap['id'],
        accountId: sessionMap['accountId'],
        puuid: sessionMap['puuid'],
        name: sessionMap['name'],
        profileIconId: sessionMap['profileIconId'],
        summonerLevel: sessionMap['summonerLevel'],
      );
    } else {
      return Session(
        id: '',
        accountId: '',
        puuid: '',
        name: '',
        profileIconId: 0,
        summonerLevel: 0,
      );
    }
  }
}
