import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:flutter_instagram/models/register_type.dart';

//TODO replace with your own action
enum RegisterAction { action, onTabChangedAction }

class RegisterActionCreator {
  static Action onAction() {
    return const Action(RegisterAction.action);
  }
  static Action onTabChangedAction(Object object) {
    return Action(RegisterAction.onTabChangedAction, payload: object);
  }
}
