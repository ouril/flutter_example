import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {

    return new LoginState();
  }


}


class LoginState extends State<LoginPage>{

  final TextEditingController _userEditingController = new TextEditingController();
  final TextEditingController _passEditingController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blueAccent,
        title: new Text("LoginPage"),

      ),
      backgroundColor: Colors.blueGrey,
      body: new Container(
        alignment: Alignment.topCenter,
        child: new Column(
          children: <Widget>[
            new Image.asset(
              'images/face.png',
              width: 90.0,
              height: 90.0,
              color: Colors.greenAccent,
            ),
            new Container(
              width: 420.0,
              height: 280.0,
              color: Colors.white,
              alignment: Alignment.topCenter,
              child: new Column(
                children: <Widget>[
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                    children: <Widget>[
                      Expanded(
                      child: new Column(
                        children: <Widget> [

                       new TextField(
                          controller: _userEditingController,
                          decoration: new InputDecoration(
                          hintText: 'Enter User name',
                          icon: new Icon(Icons.person_add)
                        ),
                      ),
                       new TextField(
                          controller: _passEditingController,
                          decoration: new InputDecoration(
                          hintText: 'Enter User pass',
                          icon: new Icon(Icons.terrain)
                      ),
                    )
                          ]

                      )),

                ],
              ),
              ]
            ),

        ),
      ]),


    ));
  }

}