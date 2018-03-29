import 'package:flutter/material.dart';
import 'package:flutter_app_activity/activities/Home.dart';
import 'package:flutter_app_activity/activities/Second%20Page.dart';
import 'package:flutter_app_activity/activities/Third%20Page.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title: 'Jump from Home..!!',
      routes: <String,WidgetBuilder>{
        '/Home': (BuildContext context) => new Home(),
        '/Second': (BuildContext context) => new Second(),
        '/Third': (BuildContext context) => new Third(),
      } ,
      home: new Home(),
    );
  }
}