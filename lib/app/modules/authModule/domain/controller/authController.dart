import 'package:lol_stats/app/core/Enums/enums.dart';
import 'package:mobx/mobx.dart';

part 'authController.g.dart';

class AuthController = AuthControllerBase with _$AuthController;

abstract class AuthControllerBase with Store {
  @observable
  Observable<LoginButtonState> _buttonState =
      Observable<LoginButtonState>(LoginButtonState.idle);

  @action
  void setButtonLoading() {
    _buttonState.value = LoginButtonState.loading;
  }

  @action
  void setButtonIdle() {
    _buttonState.value = LoginButtonState.idle;
  }

  LoginButtonState getButtonState() {
    return _buttonState.value;
  }
}
