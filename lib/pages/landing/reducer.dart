import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<LandingState> buildReducer() {
  return asReducer(
    <Object, Reducer<LandingState>>{
      LandingAction.showLogin: showLogin,
    },
  );
}

LandingState showLogin(LandingState state, Action action) {
  return state.clone()..isShowLogin = action.payload;
}
