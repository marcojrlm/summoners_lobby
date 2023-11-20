import 'package:flutter_modular/flutter_modular.dart';
import 'package:lol_stats/app/modules/authModule/authModule.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [AuthModule()];

  @override
  void routes(RouteManager r) {
    r.module('/', module: AuthModule());
  }
}
