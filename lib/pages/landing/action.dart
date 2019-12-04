import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum LandingAction { action }

class LandingActionCreator {
  static Action onAction() {
    return const Action(LandingAction.action);
  }
}
