import 'package:fish_redux/fish_redux.dart';

class LandingState implements Cloneable<LandingState> {
  bool isShowLogin = false;
  @override
  LandingState clone() {
    return LandingState()
    ..isShowLogin = isShowLogin;
  }
}

LandingState initState(Map<String, dynamic> args) {
  return LandingState();
}
