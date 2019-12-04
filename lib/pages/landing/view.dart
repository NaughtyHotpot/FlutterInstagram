import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(LandingState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: new AppBar(
      backgroundColor: new Color(0xfff8faf8),
      centerTitle: true,
      elevation: 1.0,
      leading: Icon(Icons.camera_alt, color: Colors.black,),
      title: SizedBox(
          height: 35.0, child: Image.asset("assets/images/insta_logo.png")),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 12.0),
          child: Icon(Icons.send, color: Colors.black),
        )
      ],
    ),
    body: Text("Hello"),
  );
}
