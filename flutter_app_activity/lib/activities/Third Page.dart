import 'package:flutter/material.dart';

class Third  extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(title: new Text('Final Page'),),
      body: new Container(
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text('Welcome to Home..!!'),
               new RaisedButton(
                   child: new Text('Take me back..!!'),
                   onPressed: (){Navigator.of(context).pop();} ),
              new RaisedButton(
                  child: new Text('Next'),
                  onPressed: (){Navigator.of(context).pushNamedAndRemoveUntil('/Home',(Route<dynamic> route) => false); })
            ],
          ),
        ),
      ),
    );
  }
}