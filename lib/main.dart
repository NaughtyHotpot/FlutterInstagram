import 'package:flutter/material.dart';

import 'app_route.dart';

void main() => runApp(createApp());

Widget createApp(){

  return MaterialApp(
    title: 'Instagram',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: AppRoute.global.buildPage(RoutePath.landing, null),
    onGenerateRoute: (RouteSettings settings){
      return MaterialPageRoute<Object>(builder: (BuildContext context) {
        return AppRoute.global.buildPage(settings.name, settings.arguments);
      });
    },
  );
}