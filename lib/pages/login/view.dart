import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(LoginState state, Dispatch dispatch, ViewService viewService) {
  final appBar = new AppBar(
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
  );
  return Scaffold(
    body: Stack(
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
              onTap: (){

              },
              child: Text("Log In", style: TextStyle(fontSize:12, color: Colors.blue[300]),),
            )
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Divider(height: 2,),
              Padding(
                child: Text("from", style: TextStyle(fontWeight: FontWeight.w300),),
                padding: EdgeInsets.only(top: 15),
              ),
              Padding(
                child: Text("FACEBOOK", style: TextStyle(fontSize:15, fontWeight: FontWeight.w600, color: Colors.black)),
                padding: EdgeInsets.only(bottom: 15),
              )
            ],
          ),
        ),
      ],
    ),
  );
}
