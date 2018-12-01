import 'package:flutter/material.dart';
import 'dart:math' as m;


class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new BMIState();
  }

}


class BMIState extends State<Home>{
  final TextEditingController _controllerWeigth = new TextEditingController();
  final TextEditingController _controllerHight = new TextEditingController();
  final TextEditingController _controllerAge = new TextEditingController();

  double result = 0.0;

  String resultText = '';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('BMI'),
        backgroundColor: Colors.amberAccent,
        ),
      body: new Container(
        color: Colors.white,
        child: new ListView(
          children: <Widget>[
            new Image.asset('images/bmilogo.png', height: 150.0,),
            new Padding(padding: const EdgeInsets.all(15.0)),
            new Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: Colors.grey,
              alignment: Alignment.center,
              child: Column(
                children: <Widget>[
                  new TextField(
                    controller: _controllerWeigth,
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(
                      icon: new Icon(Icons.line_weight),
                      hintText: "Enter your weigth"

                    ),

                  ),
                  new Padding(padding: const EdgeInsets.all(10)),
                  new TextField(
                    controller: _controllerHight,
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(
                        icon: new Icon(Icons.high_quality),
                        hintText: "Enter your hight"

                    ),

                  ),
                  new Padding(padding: const EdgeInsets.all(10)),
                  new TextField(
                    controller: _controllerAge,
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(
                        icon: new Icon(Icons.mic),
                        hintText: "Enter your age"

                    ),

                  ),
                  new Padding(padding: const EdgeInsets.all(10)),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Container(
                          color: null,

                         child: new RaisedButton(
                           onPressed: _calculate,
                            color: Colors.pinkAccent,

                            child: new Text(
                              'calculate',

                            style: new TextStyle(
                              color: Colors.white
                            ),
                          ),
                          )
                      )
                    ],
                  )
                ],
              ),
            ),
            new Padding(padding: EdgeInsets.all(10)),
            new Center(
              child:
            new Text(
                resultText,
              style: TextStyle(
                fontSize: 20,
                color: Colors.pink,
                fontWeight: FontWeight.w600
              ),
            ))
          ],
        ),
      ),
      );

  }

  void _calculate(){
    setState(() {

      if (_controllerAge.text.isNotEmpty &&
      _controllerHight.text.isNotEmpty &&
      _controllerWeigth.text.isNotEmpty){
        result = double.parse(_controllerWeigth.text)/m.sqrt(double.parse(_controllerHight.text));
        
        if (result > 25) {
          resultText = "Ваш индекс ${result.toStringAsFixed(2)}\nваш вес выше нормы";
        } else {
          resultText = "Ваш индекс ${result.toStringAsFixed(2)}\nваш вес ниже нормы";
        }

      }

    });
  }

}