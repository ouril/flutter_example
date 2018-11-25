import 'package:flutter/material.dart';

// ignore: missing_identifier
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        title: Text('My Fancy Dress'),
      ),
      body: Container(
        child:
            new InkWell(
              highlightColor: Colors.green,
              child: new Text("Button!"),
              onTap: () => debugPrint("Hello!!!"),
            ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(height: 50.0,),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
