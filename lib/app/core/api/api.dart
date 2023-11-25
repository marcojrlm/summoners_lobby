import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:lol_stats/environments/environments.dart';

class Api {
  final String method;
  final String path;
  final String api;
  final Map<String, dynamic>? body;
  final apiKey = Environments.apiKey;

  Api({
    required this.path,
    required this.api,
    required this.method,
    this.body,
  });

  Future connection() async {
    if (method == 'GET') {
      final response = await http.get(
        Uri.parse("$api/$path?api_key=$apiKey"),
        headers: {"Content-type": "application/json"},
      );

      if (response.statusCode != 200) {
        throw Exception({'status': response.statusCode, 'body': response.body});
      }

      return response;
    }
    if (method == 'POST') {
      final response = await http.post(Uri.parse("$api/$path?api_key=$apiKey"),
          headers: {"Content-type": "application/json"},
          body: jsonEncode(body));

      if (response.statusCode != 200) {
        throw Exception({'status': response.statusCode, 'body': response.body});
      }

      return response;
    }
  }
}
