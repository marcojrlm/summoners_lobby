import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:lol_stats/app/modules/lobbyModule/domain/lobbyDomain.dart';
import 'package:lol_stats/resources/appColors.dart';
import 'package:lol_stats/resources/networkImages.dart';

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
    domain.getSummonerStats();
  }

  @override
  Widget build(BuildContext context) {
    var controller = domain.controller;
    return Scaffold(
      backgroundColor: AppColors.blue60,
      body: Observer(
        builder: (_) {
          return controller.getSummonerStats() == null
              ? const Center(child: CircularProgressIndicator())
              : Column(
                  children: [
                    Image.network(domain.getProfileIcons(
                        controller.getSummonerStats()!.profileIconId!))
                  ],
                );
        },
      ),
    );
  }
}
