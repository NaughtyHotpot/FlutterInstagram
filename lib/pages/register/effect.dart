import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:flutter_instagram/models/register_type.dart';
import 'action.dart';
import 'state.dart';

Effect<RegisterState> buildEffect() {
  return combineEffects(<Object, Effect<RegisterState>>{
    Lifecycle.initState: _initState,
    RegisterAction.action: _onAction,
  });
}

void _onAction(Action action, Context<RegisterState> ctx) {
}

void _initState(Action action, Context<RegisterState> ctx) {

  List<RegisterType> list = new List<RegisterType>();
  list.add(RegisterType(0, "PHONE"));
  list.add(RegisterType(1, "EMAIL"));

  final TickerProvider tickerProvider = ctx.stfState  as TickerProvider;

  TabController tabController = TabController(length: 2, vsync: tickerProvider);

  ctx.dispatch(RegisterActionCreator.onTabChangedAction({"list": list, "tabController": tabController}));

  tabController.addListener((){

  });
}