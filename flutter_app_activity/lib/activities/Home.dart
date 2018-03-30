import 'package:flutter/material.dart';


class Home extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(title: new Text('Home'),),
      body: new Container(
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text('Welcome to Home..!!'),
              new RaisedButton(
              child: new Text('Next'),
              onPressed: (){Navigator.of(context).pushNamed('/Second'); })
            ],
          ),
        ),
      ),
    );
  }
}