import 'package:flutter/material.dart';

class MakeItRain extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return new MakeItRainState();
  }

}

class MakeItRainState extends State<MakeItRain>{

  int _money = 0;

  void _rainMoney() {
    setState(() {_money += 100;});


  }


  ColorSwatch _setColor(){
    if (_money < 3000){
      return  Colors.greenAccent;
    }
    return Colors.amber;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Make it Rain!"),
        backgroundColor: Colors.green,

      ),
      body: new Container(

        child: new Column(
          children: <Widget>[
            new Center(
              child: new Text(
                "Get Started",
                style: new TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                  fontSize: 30
                )
              )
            ),
            new Expanded(
                child: new Center(
                    child: new Text(
                  "Money $_money",
                  style: new TextStyle(
                    color: _setColor(),

                    fontSize: 47,
                    fontWeight: FontWeight.w800
                  )
                ))
            ),
            new Expanded(
                child: new Center (
                child: new FlatButton(
                    color: Colors.lightGreen,
                    onPressed: _rainMoney,
                    child: buildText("Lets rain") )
            ))

          ],
        ),
      ),
    );
  }
}







Text buildText(String str){
  return new Text(
    str,
    textDirection: TextDirection.ltr,
    style: new TextStyle(
      color: Colors.white70,
      fontSize: 20,
      fontWeight: FontWeight.w600
    )
  );
}