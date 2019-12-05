import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_instagram/app_route.dart';
import 'package:flutter_instagram/utils/navigator_util.dart';
import 'action.dart';
import 'state.dart';

Effect<LandingState> buildEffect() {
  return combineEffects(<Object, Effect<LandingState>>{
    LandingAction.login: _onLogin,
  });
}

void _onLogin(Action action, Context<LandingState> ctx) {
  NavigatorUtil.push(ctx.context, RoutePath.login, null);
}
