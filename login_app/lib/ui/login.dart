import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {

    return new LoginState();
  }


}


class LoginState extends State<LoginPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blueAccent,
        title: new Text("LoginPage"),

      ),
      backgroundColor: Colors.blueGrey,
    );
  }

}