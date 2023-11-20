import 'package:flutter/material.dart';
import 'package:lol_stats/app/core/widgets/SummonersButton.dart';
import 'package:lol_stats/app/core/widgets/SummonersInput.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final formKey = GlobalKey<FormState>();

  var formData = <String, String>{};

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(
          'lib/assets/images/Grandmaster_Emblem_2022.png',
          width: 250,
        ),
        const Text('Digite seu nome de usário, invocador'),
        Form(
          key: formKey,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              children: [
                SummonersInput(hint: 'usuário'),
                SizedBox(height: 25),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: SummonersButton(
            text: 'login',
            onTap: () {},
          ),
        )
      ],
    );
  }
}
