import 'package:fish_redux/fish_redux.dart';

class LandingState implements Cloneable<LandingState> {

  @override
  LandingState clone() {
    return LandingState();
  }
}

LandingState initState(Map<String, dynamic> args) {
  return LandingState();
}
