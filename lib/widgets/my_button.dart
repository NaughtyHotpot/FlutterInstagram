import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget{
  final String title;
  final double width;
  final double height;
  final GestureTapCallback onTap;
  MyButton(this.title, this.onTap, {
    this.width, this.height
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ButtonTheme(
      minWidth: width != null ? width : MediaQuery.of(context).size.width-64,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(4.0),
            side: BorderSide(color: Colors.blue[300])
        ),
        color: Colors.blue[300],
        child: Text(title, style: TextStyle(color: Colors.white)),
        onPressed: onTap,
      ),
    );;
  }
}