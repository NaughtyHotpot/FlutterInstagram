import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_instagram/pages/register/state.dart';

class TabState extends ComponentState<RegisterState> with SingleTickerProviderStateMixin{

}

class TabComponent extends Component<RegisterState>{
  @override
  TabState createState() {
    // TODO: implement createState
    return TabState();
  }
}