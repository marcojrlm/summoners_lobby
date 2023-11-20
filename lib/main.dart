import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lol_stats/app/modules/app.dart';
import 'package:lol_stats/app/modules/appModule.dart';

void main() {
  runApp(ModularApp(module: AppModule(), child: const App()));
}
