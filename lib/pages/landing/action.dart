import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum LandingAction { showLogin, login, register }

class LandingActionCreator {
  static Action onLogin() {
    return const Action(LandingAction.login);
  }
  static Action showLogin(bool isShow) {
    return Action(LandingAction.showLogin, payload: isShow);
  }

  static Action onRegister() {
    return Action(LandingAction.register);
  }

}
