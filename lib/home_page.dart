import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
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

    String parseAbleForCalculation = "";
    bool alreadyAnOperator = false;
    String whatOperatorIsTypedFirst = "";
    bool isAnswerPresent = false;

  @override
    Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator"),
      ),//AppBar
      body: new Container(
        padding: const EdgeInsets.all(20.0),
        child: Flex(
          direction: Axis.vertical,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center ,
          children: <Widget>[
            Flexible(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                    parseAbleForCalculation,
                  style: TextStyle(
                    fontSize: 24.0,
                  ),
                ),
              ),
            ),

            Flexible(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: <Widget>[

                      SizedBox(
                        width: 75,
                        height: 75,
                        child:
                        FloatingActionButton(
                          child: Text("1", style: TextStyle(fontSize: 24.0,),),
                          onPressed: () {
                            if(isAnswerPresent) {
                              parseAbleForCalculation = "";
                              isAnswerPresent = false;
                              parseAbleForCalculation = parseAbleForCalculation + '1';
                              setState(() {
                              });
                            } else {
                              parseAbleForCalculation = parseAbleForCalculation + '1';
                              setState(() {
                              });
                            }
                          },
                        ),
                      ),


                      SizedBox(
                        width: 75,
                        height: 75,
                        child:
                        FloatingActionButton(
                          child: Text("2", style: TextStyle(fontSize: 24.0,),),
                          onPressed: () {
                            if(isAnswerPresent) {
                              parseAbleForCalculation = "";
                              isAnswerPresent = false;
                              parseAbleForCalculation = parseAbleForCalculation + '2';
                              setState(() {
                              });
                            } else {
                              parseAbleForCalculation = parseAbleForCalculation + '2';
                              setState(() {
                              });
                            }
                          },
                        ),
                      ),


                      SizedBox(
                        width: 75,
                        height: 75,
                        child:
                        FloatingActionButton(
                          child: Text("3", style: TextStyle(fontSize: 24.0,),),
                          onPressed: () {
                            if(isAnswerPresent) {
                              parseAbleForCalculation = "";
                              isAnswerPresent = false;
                              parseAbleForCalculation = parseAbleForCalculation + '3';
                              setState(() {
                              });
                            } else {
                              parseAbleForCalculation = parseAbleForCalculation + '3';
                              setState(() {
                              });
                            }
                          },
                        ),
                      ),



                      SizedBox(
                        width: 75,
                        height: 75,
                        child:
                        FloatingActionButton(
                          child: Text("+", style: TextStyle(fontSize: 24.0,),),
                          onPressed: () {
                            if(alreadyAnOperator) {
                              //You can use Toast or Snackbar saying that already there's an operator in the above Syntax
                            } else {
                              parseAbleForCalculation = parseAbleForCalculation + '+';
                              alreadyAnOperator = true;
                              whatOperatorIsTypedFirst = '+';
                              setState(() {

                              });
                            }
                          },
                        ),
                      ),

                    ],
                  ),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: <Widget>[

                      SizedBox(
                        width: 75,
                        height: 75,
                        child:
                        FloatingActionButton(
                          child: Text("4", style: TextStyle(fontSize: 24.0,),),
                          onPressed: () {

                            if(isAnswerPresent) {
                              parseAbleForCalculation = "";
                              isAnswerPresent = false;
                              parseAbleForCalculation = parseAbleForCalculation + '4';
                              setState(() {
                              });
                            } else {
                              parseAbleForCalculation = parseAbleForCalculation + '4';
                              setState(() {
                              });
                            }

                          },
                        ),
                      ),

                      SizedBox(
                        width: 75,
                        height: 75,
                        child:
                        FloatingActionButton(
                          child: Text("5", style: TextStyle(fontSize: 24.0,),),
                          onPressed: () {

                            if(isAnswerPresent) {
                              parseAbleForCalculation = "";
                              isAnswerPresent = false;
                              parseAbleForCalculation = parseAbleForCalculation + '5';
                              setState(() {
                              });
                            } else {
                              parseAbleForCalculation = parseAbleForCalculation + '5';
                              setState(() {
                              });
                            }


                          },
                        ),
                      ),

                      SizedBox(
                        width: 75,
                        height: 75,
                        child:
                        FloatingActionButton(
                          child: Text("6", style: TextStyle(fontSize: 24.0,),),
                          onPressed: () {


                            if(isAnswerPresent) {
                              parseAbleForCalculation = "";
                              isAnswerPresent = false;
                              parseAbleForCalculation = parseAbleForCalculation + '6';
                              setState(() {
                              });
                            } else {
                              parseAbleForCalculation = parseAbleForCalculation + '6';
                              setState(() {
                              });
                            }


                          },
                        ),
                      ),

                      SizedBox(
                        width: 75,
                        height: 75,
                        child:
                        FloatingActionButton(
                          child: Text("-", style: TextStyle(fontSize: 24.0,),),
                          onPressed: () {
                            if(alreadyAnOperator) {
                              //You can use Toast or Snackbar saying that already there's an operator in the above Syntax
                            } else {
                              parseAbleForCalculation = parseAbleForCalculation + '-';
                              alreadyAnOperator = true;
                              whatOperatorIsTypedFirst = '-';
                              setState(() {

                              });
                            }
                            },
                        ),
                      ),
                    ],
                  ),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: <Widget>[

                      SizedBox(
                        width: 75,
                        height: 75,
                        child:
                        FloatingActionButton(
                          child: Text("7", style: TextStyle(fontSize: 24.0,),),
                          onPressed: () {
                            if(isAnswerPresent) {
                              parseAbleForCalculation = "";
                              isAnswerPresent = false;
                              parseAbleForCalculation = parseAbleForCalculation + '7';
                              setState(() {
                              });
                            } else {
                              parseAbleForCalculation = parseAbleForCalculation + '7';
                              setState(() {
                              });
                            }
                            },
                        ),
                      ),

                      SizedBox(
                        width: 75,
                        height: 75,
                        child:
                        FloatingActionButton(
                          child: Text("8", style: TextStyle(fontSize: 24.0,),),
                          onPressed: () {

                            if(isAnswerPresent) {
                              parseAbleForCalculation = "";
                              isAnswerPresent = false;
                              parseAbleForCalculation = parseAbleForCalculation + '8';
                              setState(() {
                              });
                            } else {
                              parseAbleForCalculation = parseAbleForCalculation + '8';
                              setState(() {
                              });
                            }

                          },
                        ),
                      ),


                      SizedBox(
                        width: 75,
                        height: 75,
                        child:
                        FloatingActionButton(
                          child: Text("9", style: TextStyle(fontSize: 24.0,),),
                          onPressed: () {

                            if(isAnswerPresent) {
                              parseAbleForCalculation = "";
                              isAnswerPresent = false;
                              parseAbleForCalculation = parseAbleForCalculation + '9';
                              setState(() {
                              });
                            } else {
                              parseAbleForCalculation = parseAbleForCalculation + '9';
                              setState(() {
                              });
                            }

                          },
                        ),
                      ),


                      SizedBox(
                        width: 75,
                        height: 75,
                        child:
                        FloatingActionButton(
                          child: Text("*", style: TextStyle(fontSize: 24.0,),),
                          onPressed: () {

                            if(alreadyAnOperator) {
                              //You can use Toast or Snackbar saying that already there's an operator in the above Syntax
                            } else {
                              parseAbleForCalculation = parseAbleForCalculation + '*';
                              alreadyAnOperator = true;
                              whatOperatorIsTypedFirst = '*';
                              setState(() {

                              });
                            }

                          },
                        ),
                      ),

                    ],
                  ),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: <Widget>[

                      SizedBox(
                        width: 75,
                        height: 75,
                        child:
                        FloatingActionButton(
                          child: Text("C", style: TextStyle(fontSize: 24.0,),),
                          onPressed: () {
                            setState(() {
                              parseAbleForCalculation = "";
                              t1.text = "";
                              t2.text = "";
                              whatOperatorIsTypedFirst = "";
                              alreadyAnOperator = false;
                            });
                          },
                        ),
                      ),


                      SizedBox(
                        width: 75,
                        height: 75,
                        child:
                        FloatingActionButton(
                          child: Text("0", style: TextStyle(fontSize: 24.0,),),
                          onPressed: () {

                            if(isAnswerPresent) {
                              parseAbleForCalculation = "";
                              isAnswerPresent = false;
                              parseAbleForCalculation = parseAbleForCalculation + '0';
                              setState(() {
                              });
                            } else {
                              parseAbleForCalculation = parseAbleForCalculation + '0';
                              setState(() {
                              });
                            }

                          },
                        ),
                      ),


                      SizedBox(
                        width: 75,
                        height: 75,
                        child:
                        FloatingActionButton(
                          child: Text("=", style: TextStyle(fontSize: 24.0,),),
                          onPressed: () {
                            List<String> listOfNumbers = parseAbleForCalculation.split("$whatOperatorIsTypedFirst");
                            print(listOfNumbers);
                            t1.text = listOfNumbers[0];
                            t2.text = listOfNumbers[1];
                            switch(whatOperatorIsTypedFirst) {
                              case '+': doAddition(); break;
                              case '-': doSubtraction(); break;
                              case '*': doMultiplication(); break;
                              case '/': doDivision(); break;
                            }
                            parseAbleForCalculation = sum.toString();
                            whatOperatorIsTypedFirst = "";
                            alreadyAnOperator = false;
                            t1.text = "";
                            t2.text = "";
                            isAnswerPresent = true;
                            setState(() {

                            });
                          },
                        ),
                      ),

                      SizedBox(
                        width: 75,
                        height: 75,
                        child:
                        FloatingActionButton(
                          child: Text("/", style: TextStyle(fontSize: 24.0,),),
                          onPressed: () {

                            if(alreadyAnOperator) {
                              //You can use Toast or Snackbar saying that already there's an operator in the above Syntax
                            } else {
                              parseAbleForCalculation = parseAbleForCalculation + '/';
                              alreadyAnOperator = true;
                              whatOperatorIsTypedFirst = '/';
                              setState(() {

                              });
                            }

                          },
                        ),
                      ),

                    ],
                  ),
                ],
              ),
            )
          ],
        )
      ),
    );
  }

  }
