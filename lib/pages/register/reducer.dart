import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<RegisterState> buildReducer() {
  return asReducer(
    <Object, Reducer<RegisterState>>{
      RegisterAction.action: _onAction,
      RegisterAction.onTabChangedAction: onTabChangedAction
    },
  );
}

RegisterState _onAction(RegisterState state, Action action) {
  final RegisterState newState = state.clone();
  return newState;
}
RegisterState onTabChangedAction(RegisterState state, Action action) {
  final Map map = action.payload;
  final list = map["list"];
  final tabController = map["tabController"];
  final RegisterState newState = state.clone();
  newState.tabController = tabController;
  newState.tabs = list;
  return newState;
}
