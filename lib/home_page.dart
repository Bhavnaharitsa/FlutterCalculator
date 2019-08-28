import 'package:flutter/material.dart';
class HomePage extends StatefulWidget{
  @override
  State createState() => new HomePageState();

  }
  class HomePageState extends State<HomePage>{
  @override
    Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator"),
      ),//AppBar
      body: new Container(
        child: new Column(
         children: <Widget>[
           new TextField(
             keyboardType: TextInputType.number,
             decoration: new InputDecoration(
               hintText: "Enter Numer 1"
             ),
           )
         ],
        )
      ),
    );
  }

  }
