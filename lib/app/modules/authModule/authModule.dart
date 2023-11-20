import 'package:flutter_modular/flutter_modular.dart';
import 'package:lol_stats/app/modules/authModule/presentation/pages/authPage.dart';

class AuthModule extends Module {
  @override
  void exportedBinds(Injector i) {}

  @override
  void binds(Injector i) {}

  @override
  void routes(RouteManager r) {
    r.child('/', child: (_) => const AuthPage());
  }
}
