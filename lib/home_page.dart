import 'package:flutter/material.dart';
class HomePage extends StatefulWidget{

  @override
  State createState() => new HomePageState();

  }
  class HomePageState extends State<HomePage>{
    var num1=0, num2=0, sum=0;
    final TextEditingController t1= new TextEditingController(text: "0");
    final TextEditingController t2= new TextEditingController(text: "0");
    void doAddition(){
     setState(() {
       num1=int.parse(t1.text);
       num2=int.parse(t2.text);
       sum=num1+num2;
     });
    }
    void doSubtraction(){
      setState(() {
        num1=int.parse(t1.text);
        num2=int.parse(t2.text);
        sum=num1-num2;
      });
    }
    void doMultiplication(){
      setState(() {
        num1=int.parse(t1.text);
        num2=int.parse(t2.text);
        sum=num1*num2;
      });
    }
    void doDivision(){
      setState(() {
        num1=int.parse(t1.text);
        num2=int.parse(t2.text);
        sum=(num1/num2).toInt();
      });
    }
    void doClear(){
      setState(() {
       t1.text="0";
       t2.text="0";
      });
    }

  @override
    Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator"),
      ),//AppBar
      body: new Container(
        padding: const EdgeInsets.all(20.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           new Text(
            "Output: $sum",
          style:  new TextStyle(
            fontSize: 30.0, color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
           new TextField(
             keyboardType: TextInputType.number,
             decoration: new InputDecoration(
               hintText: "Enter Numer 1"
             ),
             controller: t1,

           ),
          new TextField(
            keyboardType: TextInputType.number,
            decoration: new InputDecoration(
                hintText: "Enter Numer 2"
            ),
            controller: t2,
          ),
           new Padding(padding: const EdgeInsets.only(top: 20.0),
           ),
           new Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: <Widget>[
               new SizedBox(
                 width: 150.0,
                 height: 50.0,
                 child: new RaisedButton(
                   child: new Text("Addition"),
                   onPressed: doAddition,
                   color: Colors.red,
                 ),
               ),
               new SizedBox(
                 width: 150.0,
                 height: 50.0,
                 child: new RaisedButton(
                   child: new Text("Subtraction"),
                   onPressed: doSubtraction,
                   color: Colors.amber,
                 ),
               ),

             ],
           ),
           new Padding(padding: const EdgeInsets.only(top: 20.0),
           ),

        new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new SizedBox(
            width: 150.0,
            height: 50.0,
            child: new RaisedButton(
              child: new Text("Multiply"),
              onPressed: doMultiplication,
              color: Colors.blue,
            ),
          ),
          new SizedBox(
            width: 150.0,
            height: 50.0,
            child: new RaisedButton(
              child: new Text("Division"),
              onPressed: doDivision,
              color: Colors.green,
            ),
          ),

        ],
      ),
           new Padding(padding: const EdgeInsets.only(top: 20.0),),
           new MaterialButton(onPressed: doClear,
           child: new Text("Clear"),
           color: Colors.black,
           textColor: Colors.white,),

         ],
        )
      ),
    );
  }

  }
