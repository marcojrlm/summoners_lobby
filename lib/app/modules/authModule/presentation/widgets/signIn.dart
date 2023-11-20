import 'package:flutter/material.dart';
import 'package:lol_stats/app/core/widgets/SummonersButton.dart';
import 'package:lol_stats/app/core/widgets/SummonersInput.dart';
import 'package:lol_stats/app/modules/authModule/domain/authDomain.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final formKey = GlobalKey<FormState>();
  var formData = <String, String>{};
  final AuthDomain domain = AuthDomain();
  final TextEditingController _controller = TextEditingController();

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
                  controller: _controller,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: SummonersButton(
            text: 'login',
            onTap: () async {
              await domain.getAndNavigateToSummunersPage(_controller.text);
            },
          ),
        )
      ],
    );
  }
}
