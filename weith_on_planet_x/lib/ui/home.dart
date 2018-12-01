import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {

    return new WeigthState();
  }

}


class WeigthState extends State<Home> {
  final double plutoWeigth = 0.06;
  final double venusWeigth = 0.91;
  final double marsWeigth = 0.38;
  String msg = '';

  double _finalResult = 0.0;

  final TextEditingController _controller = new TextEditingController();
  int radioValue = 0;

  void handleRadioButtonChanged(int value){
    setState(() {
      radioValue = value;


      switch(radioValue){
        case 0:
          if (_controller.text.isNotEmpty) _finalResult = plutoWeigth * double.parse(_controller.text);
          msg = 'Your wiegth on Pluto is ${_finalResult.toStringAsFixed(2)}';
          break;
        case 1:
          if (_controller.text.isNotEmpty) _finalResult = marsWeigth * double.parse(_controller.text);
          msg = 'Your wiegth on Mars is ${_finalResult.toStringAsFixed(2)}';
          break;
        case 2:
          if (_controller.text.isNotEmpty) _finalResult = venusWeigth * double.parse(_controller.text);
          msg = 'Your wiegth on Venus is ${_finalResult.toStringAsFixed(2)}';
          break;
      }
      print(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Weigth on Planet X"),
        backgroundColor: Colors.black38,
      ),
      body: new Container(
        padding: const EdgeInsets.all(2.5),
        color: Colors.blueGrey,
        child: new ListView(
          children: <Widget>[
            new Image.asset("images/planet.png", height: 133.0,),

            new Container(
              margin: const EdgeInsets.all(3.0),
              alignment: Alignment.center,
              child: new Column(
                children: <Widget>[
                  new TextField(
                    keyboardType: TextInputType.number,
                    controller: _controller,
                    decoration: new InputDecoration(
                      hintText: 'Input your weigth',
                      labelText: 'Input your weigth',
                      icon: new Icon(Icons.person),
                    ),
                  ),
                  new Padding(padding: const EdgeInsets.all(5)),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Radio(
                        value: 0,
                        groupValue: radioValue,
                        onChanged: handleRadioButtonChanged,
                        activeColor: Colors.orange,
                      ),
                      new Text('Pluto', style: getTextStyleForRadioText(),),
                      new  Radio(
                        value: 1,
                        groupValue: radioValue,
                        onChanged: handleRadioButtonChanged,
                        activeColor: Colors.red,
                      ),
                      new Text('Mars', style: getTextStyleForRadioText(),),
                      new  Radio(
                        value: 2,
                        groupValue: radioValue,
                        onChanged: handleRadioButtonChanged,
                        activeColor: Colors.blue,
                      ),
                      new Text('Venus', style: getTextStyleForRadioText(),),
                    ],
                  ),
                  new Padding(padding: const EdgeInsets.all(10)),
                  new Text(
                      msg,
                      style: new TextStyle(
                        fontSize: 26,
                        color: Colors.white
                      ),
                  )
                ],
              ),
            )



          ],
        ),

        )
      );

  }
  TextStyle getTextStyleForRadioText(){
    return new TextStyle(
      color: Colors.white30,
      fontSize: 14
    );
  }


}