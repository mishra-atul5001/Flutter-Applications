import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    theme: new ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => new MyAppState();
}
enum MyActionstoprform{
  yes,no,try_again
}
class MyAppState extends State<MyApp>{
 // final GlobalKey<ScaffoldState> _scaffoldState = new GlobalKey<ScaffoldState>();
String _text= '';
String _change = '';
@override
  Widget build(BuildContext context){
  return new Scaffold(
   // key: _scaffoldState,
     appBar: new AppBar(title: new Text("Rate My Flutter Progress"),

     ),
    body: new Container(
      decoration: new BoxDecoration(color: Colors.yellow,
          border: const Border(
          top: const BorderSide(width: 10.0, color: const Color(0xFFFFFFFFFF)),
      left: const BorderSide(width: 10.0, color: const Color(0xFFFFFFFFFF)),
      right: const BorderSide(width: 10.0, color: const Color(0xFFFFFFFFFF)),
      bottom: const BorderSide(width: 10.0, color: const Color(0xFFFFFFFFFF) ),
          ),
      ),
      child: new Center(
        child: new Column(
          children: <Widget>[
           // new TextField(onChanged: (String value){_onChange(value);},),

            new RaisedButton(onPressed: (){_showResult(_text);},
              elevation: 12.0,
              color: Colors.greenAccent,
              textColor: Colors.white,
              padding: const EdgeInsets.all(8.0),
              child: new Text("Rate it..!!"),
            ),
      ],
        ),
      ),
    ),
  ) ;
}

void _onChange(String value){
  setState(
      (){
         _text = value;
      }
  )     ;

}

void _useractionResult(MyActionstoprform value){
      print(value);
    //  _scaffoldState.currentState.showSnackBar(new SnackBar(content: new Text(_change),),);
      Navigator.pop(context);

}

   void _showResult(String value){
 // if(value.isEmpty) return;

  AlertDialog dialog = new AlertDialog(
    content: new Text("How do you like my Flutter Progress..!!",
    style:  new TextStyle(fontSize:  12.0),),
    actions: <Widget>[
     new FlatButton(onPressed: (){_useractionResult(MyActionstoprform.yes);}, child: new Text("Awesome")),
     new FlatButton(onPressed: (){_useractionResult(MyActionstoprform.no);}, child: new Text("Good")),
     new FlatButton(onPressed: (){_useractionResult(MyActionstoprform.try_again);}, child: new Text("Keep Trying")),

    ],
  );
  showDialog(context: context, child: dialog);
}
}


