import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(RegisterState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    body: Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.account_circle),
        TabBar(
          controller: state.tabController,
          tabs: <Widget>[
            Tab(
              text: "Phone",
            ),
            Tab(
              text: "Email",
            ),
          ],
        ),
          Expanded(
            child: TabBarView(
              controller: state.tabController,
              children: <Widget>[
                CupertinoSegmentedControl(
                  children: ,
                ),
                Text('11'),
                Text('22'),
              ],
            ),
          ),

        ],
      ),
    )
  );
}
