import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(LandingState state, Dispatch dispatch, ViewService viewService) {
  final welcomePage = new Container(
    child: Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 32, right: 32, top: 32, bottom: 20),
          child: ButtonTheme(
            minWidth: 360,
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
            dispatch(LandingActionCreator.showLogin(true));
          },
          child: Text("Log In", style: TextStyle(fontSize:14, color: Colors.blue[300]),),
        )
      ],
    ),
  );

  final loginPage = new Container(
    child: Column(
      children: <Widget>[
        Container(
          color: Colors.grey[100],
          alignment: Alignment.center,
          margin: EdgeInsets.only(left: 32,right: 32, top: 32, bottom: 8),
          height: 46,
          child: TextField(
            style: TextStyle(height: 1.5),
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey, width: 0.5)),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey, width: 0.5)),
                contentPadding: EdgeInsets.only(left: 16, top: 12, bottom: 12, right: 16),
                hintText: 'Phone number, username or email'
            ),
          ),
        ),
        Container(
          color: Colors.grey[100],
          alignment: Alignment.center,
          margin: EdgeInsets.only(left: 32,right: 32, top: 10, bottom: 8),
          height: 46,
          child: TextField(
            style: TextStyle(height: 1.5),
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey, width: 0.5)),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey, width: 0.5)),
                contentPadding: EdgeInsets.only(left: 16, top: 12, bottom: 12, right: 16),
                hintText: 'Password'
            ),
          ),
        ),
        ButtonTheme(
          minWidth: MediaQuery.of(viewService.context).size.width-64,
          child: RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(4.0),
                side: BorderSide(color: Colors.blue[300])
            ),
            color: Colors.blue[300],
            child: Text("Log In", style: TextStyle(color: Colors.white)),
            onPressed: (){
            },
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Forgot your login details? ", style: TextStyle(fontSize: 13, color: Colors.grey)),
              GestureDetector(
                child: Text("Get help signing in.", style: TextStyle(fontSize: 13, color: Colors.blueGrey[900])),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                child: Image.asset("assets/images/facebook_logo.jpg"),
                height: 16,
              ),
              GestureDetector(
                child: Text("   Log in with Facebook", style: TextStyle(fontSize: 13, color: Colors.blue)),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Divider(color: Colors.grey[400],),
              ),
              Padding(
                child: Text("OR", style: TextStyle(fontSize: 13, color: Colors.grey)),
                padding: EdgeInsets.only(left: 16, right: 16),
              ),
              Expanded(
                child: Divider(color: Colors.grey[400]),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Don't have an account? ", style: TextStyle(fontSize: 13, color: Colors.grey)),
              GestureDetector(
                child: Text("Sign Up.", style: TextStyle(fontSize: 13, color: Colors.blueGrey[900])),
              )
            ],
          ),
        )
      ],
    ),
  );
  return Scaffold(
    resizeToAvoidBottomInset: false,
    body: WillPopScope(
      onWillPop: state.isShowLogin ? ()=>dispatch(LandingActionCreator.showLogin(false)) : () async => true,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("assets/images/insta_logo.png", height: 60,),
              state.isShowLogin ? loginPage : welcomePage,
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Divider(color: Colors.grey[400]),
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
    ),
  );
}
