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

  String _welcome_string = "Nothing";

  void _erased(){
    setState(() {
      _userEditingController.clear();
      _passEditingController.clear();
    });
  }

  void _login(){
    setState(() {
      if (_userEditingController.text.isNotEmpty && _userEditingController.text.isNotEmpty){
        _welcome_string = _userEditingController.text;
      }
    });
  }

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
        child: new ListView(
          children: <Widget>[
            new Image.asset(
              'images/face.png',
              width: 90.0,
              height: 90.0,
              color: Colors.greenAccent,
            ),
            new Container(
              width: 420.0,
              height: 220.0,
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
                         obscureText: true,
                          controller: _passEditingController,
                          decoration: new InputDecoration(
                          hintText: 'Enter User pass',

                          icon: new Icon(Icons.terrain),
                      ),
                    )
                          ]

                      )),

                ],
              ),
                  new Padding(padding: new EdgeInsets.all(20.0)),
                  new Row(
                    children: <Widget>[
                      new Container(
                        margin: const EdgeInsets.only(left: 40.0),
                        child: new RaisedButton(
                            onPressed: _login,
                          color: Colors.orange,
                          child: new Text(
                            "login",
                            style: new TextStyle(
                              color: Colors.white,
                              fontSize: 20
                            )
                          )
                        )
                      ),

                      new Container(
                          margin: const EdgeInsets.only(left: 120.0),
                          child: new RaisedButton(
                              onPressed: _erased,
                              color: Colors.orange,

                              child: new Text(
                                  "clear",
                                  style: new TextStyle(
                                      color: Colors.white,
                                      fontSize: 20
                                  )
                              )
                          )
                      )

                    ],

                  )
              ]
            ),

        ),
            new Padding(padding: const EdgeInsets.all(15.4)),
            new Center(
              child: new Text(
                'welcome, $_welcome_string',
                style: new TextStyle(
                  fontSize: 30,
                  color: Colors.white
                )
              ),
            )
      ]),


    ));
  }

}