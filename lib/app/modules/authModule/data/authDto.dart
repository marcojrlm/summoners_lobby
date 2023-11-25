import 'dart:convert';

class SessionDTO {
  final String id;
  final String accountId;
  final String puuid;
  final String name;
  final int profileIconId;
  final int revisionDate;
  final int summonerLevel;

  SessionDTO({
    required this.id,
    required this.accountId,
    required this.puuid,
    required this.name,
    required this.profileIconId,
    required this.revisionDate,
    required this.summonerLevel,
  });

  factory SessionDTO.fromJson(Map<String, dynamic> json) {
    return SessionDTO(
      id: json['id'],
      accountId: json['accountId'],
      puuid: json['puuid'],
      name: json['name'],
      profileIconId: json['profileIconId'],
      revisionDate: json['revisionDate'],
      summonerLevel: json['summonerLevel'],
    );
  }

  factory SessionDTO.fromResponseBody(String responseBody) {
    final Map<String, dynamic> json = jsonDecode(responseBody);
    return SessionDTO.fromJson(json);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'accountId': accountId,
      'puuid': puuid,
      'name': name,
      'profileIconId': profileIconId,
      'revisionDate': revisionDate,
      'summonerLevel': summonerLevel,
    };
  }
}
