import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_instagram/models/register_type.dart';

class RegisterState implements Cloneable<RegisterState> {
  TabController tabController;
  List<RegisterType> tabs;

  @override
  RegisterState clone() {
    return RegisterState()
    ..tabController = tabController
    ..tabs = tabs;
  }
}

RegisterState initState(Map<String, dynamic> args) {
  return RegisterState();
}
