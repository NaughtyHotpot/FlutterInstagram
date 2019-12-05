import 'package:flutter/material.dart';

import '../app_route.dart';

class NavigatorUtil {
  static push(BuildContext context,String path, dynamic arguments){
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (BuildContext ctx) => (AppRoute.global
                .buildPage(path, arguments))));
  }
}
//void push(BuildContext context, String path, dynamic arguments){
//  Navigator.push(
//      context,
//      MaterialPageRoute(
//          builder: (BuildContext ctx) => (AppRoute.global
//              .buildPage(path, arguments))));
//}