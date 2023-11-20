import 'package:flutter/material.dart';
import 'package:lol_stats/app/modules/authModule/presentation/widgets/ClipperLobby.dart';
import 'package:lol_stats/app/modules/authModule/presentation/widgets/signIn.dart';
import 'package:lol_stats/resources/appColors.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Image.asset(
                'lib/assets/images/game-select-icon-hover.png',
                width: 30,
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                'summoner\'s lobby',
                style: TextStyle(
                    color: AppColors.golden40, fontFamily: 'beaufort-bold'),
              ),
            ],
          ),
          elevation: 0,
          toolbarHeight: 80,
          backgroundColor: AppColors.neutral60,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(0.0),
            child: Container(
              color: AppColors.golden50,
              height: 4.0,
            ),
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/assets/images/parties-background.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Align(
            alignment: Alignment.topCenter,
            child: ClipperLobby(widget: SignIn()),
          ),
        ));
  }
}
