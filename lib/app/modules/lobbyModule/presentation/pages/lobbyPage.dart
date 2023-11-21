import 'package:flutter/material.dart';
import 'package:lol_stats/app/modules/lobbyModule/domain/lobbyDomain.dart';

class LobbyPage extends StatefulWidget {
  const LobbyPage({Key? key}) : super(key: key);

  @override
  State<LobbyPage> createState() => _LobbyPageState();
}

class _LobbyPageState extends State<LobbyPage> {
  final LobbyDomain domain = LobbyDomain();

  @override
  void initState() {
    super.initState();
    domain.listHistoryMatches();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('Eu sou a tela de lobby'),
    );
  }
}
