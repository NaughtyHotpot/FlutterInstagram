import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(LandingState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    color: Colors.white,
    child: Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/images/insta_logo.png", height: 60,),
            Padding(
              padding: EdgeInsets.only(left: 32, right: 32, top: 32, bottom: 10),
              child: ButtonTheme(
                minWidth: 300,
                height: 40,
                child: RaisedButton(
                  onPressed: (){},
                  color: Colors.blue,
                  child: Text("Create New Account", style: TextStyle(color: Colors.white),),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){},
              child: Text("Log In", style: TextStyle(decoration: TextDecoration.none, fontSize:12, color: Colors.blue[300]),),
            )
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Text("Facebook", style: TextStyle(decoration: TextDecoration.none, fontSize:14, color: Colors.black),),
        ),
      ],
    ),
  );
}
