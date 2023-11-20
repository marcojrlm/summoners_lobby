import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:lol_stats/environments/environments.dart';

class Api {
  final String method;
  final String path;
  final Map<String, dynamic>? body;
  final apiUrl = Environments.apiUrl;
  final apiKey = Environments.apiKey;

  Api({
    required this.path,
    required this.method,
    this.body,
  });

  Future<T> connection<T>() async {
    final response = await http.post(
      Uri.parse("$apiUrl/$path?api_key=$apiKey"),
      headers: {"Content-type": "application/json"},
      body: jsonEncode(body),
    );

    return response as T;
  }
}
