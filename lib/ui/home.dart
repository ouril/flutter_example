import 'package:flutter/material.dart';

// ignore: missing_identifier
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text("hello!!!"),
      backgroundColor: Colors.amberAccent,
      ),
    );
  }
}

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
        color: Colors.blue,
        child: new Center(
            child: new Text(
                "hello from widget!!",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w800,
                    fontSize: 34.5
                )
            )
        ));
    // return null;
  }

}

class MyWelcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
        color: Colors.orange,
        child: new Center(
          child: new Text(
              "Hello my Widget",
              textDirection: TextDirection.ltr,
              style: new TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w100,
                  fontSize: 45
              )
          ),
        )
    );
  }
}
