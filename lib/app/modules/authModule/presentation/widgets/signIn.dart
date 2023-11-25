import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:lol_stats/app/core/Enums/enums.dart';
import 'package:lol_stats/app/core/widgets/SummonersButton.dart';
import 'package:lol_stats/app/core/widgets/SummonersInput.dart';
import 'package:lol_stats/app/modules/authModule/domain/controller/authController.dart';
import 'package:lol_stats/app/modules/authModule/domain/authDomain.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final formKey = GlobalKey<FormState>();
  var formData = <String, String>{};
  final TextEditingController _textEdding = TextEditingController();
  final AuthDomain domain = AuthDomain();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(
          'lib/assets/images/Grandmaster_Emblem_2022.png',
          width: 250,
        ),
        const Text('Digite seu nome de usuário, invocador'),
        Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                SummonersInput(
                  hint: 'usuário',
                  controller: _textEdding,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: Observer(
            builder: (_) {
              return SummonersButton(
                text: 'Buscar',
                isLoading: domain.controller.getButtonState() == LoginButtonState.idle
                    ? false
                    : true,
                onTap: () async {
                  await domain.getAndNavigateToSummunersPage(_textEdding.text);
                },
              );
            },
          ),
        )
      ],
    );
  }
}
