import 'package:flutter_modular/flutter_modular.dart';
import 'package:lol_stats/app/modules/lobbyModule/presentation/pages/lobbyPage.dart';

class LobbyModule extends Module {
  @override
  void exportedBinds(Injector i) {}

  @override
  void binds(Injector i) {}

  @override
  void routes(RouteManager r) {
    r.child('/', child: (_) => const LobbyPage());
  }
}
