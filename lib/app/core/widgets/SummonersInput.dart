import 'package:flutter/material.dart';
import 'package:lol_stats/resources/appColors.dart';

class SummonersInput extends StatelessWidget {

  final String? hint;

  const SummonersInput({super.key, placeholder, this.hint});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
        filled: true,
        fillColor: AppColors.blue70,
        border: const OutlineInputBorder(
          borderSide: BorderSide(
              color: AppColors.golden30,
              width: 50), // Borda azul com largura de 2.0
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.golden30, width: 2.0),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.golden30, width: 1.0),
        ),
      ),
      textInputAction: TextInputAction.next,
      obscureText: false,
      style: const TextStyle(color: Colors.white),
    );
  }
}
