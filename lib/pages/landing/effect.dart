import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<LandingState> buildEffect() {
  return combineEffects(<Object, Effect<LandingState>>{
    LandingAction.action: _onAction,
  });
}

void _onAction(Action action, Context<LandingState> ctx) {
}
