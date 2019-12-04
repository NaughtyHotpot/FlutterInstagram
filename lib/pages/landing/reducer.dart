import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<LandingState> buildReducer() {
  return asReducer(
    <Object, Reducer<LandingState>>{
      LandingAction.action: _onAction,
    },
  );
}

LandingState _onAction(LandingState state, Action action) {
  final LandingState newState = state.clone();
  return newState;
}
