import 'package:flutter/material.dart';
import 'package:flutter_app_web/ui//home.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


Future<List> getJson() async {
  String apiUrl = 'https://jsonplaceholder.typicode.com/posts';

  http.Response response = await http.get(apiUrl);

  return json.decode(response.body);

}

void main() async {

  List _data = await getJson();
  _data.forEach((element) {
    print(element['id']);
    print(element['title']);
  });

  runApp(
      new MaterialApp(
          home: new Scaffold(
              appBar: new AppBar(
                title: Text("JSON Parse"),
                centerTitle: true,

              ),
              body: new Center(
                  child: new ListView.builder(
                      itemCount: _data.length,
                      padding: const EdgeInsets.all(14.5),
                      itemBuilder: (BuildContext context, int position) {
                        return Column(
                          children: <Widget>[
                            new Divider(height: 5.5),
                            new ListTile(
                              title: Text("${_data[position]['title']}",
                              style: new  TextStyle(
                                fontSize: 14.9,
                                color: Colors.green
                              ),),
                              subtitle: Text("${_data[position]["body"]}"),
                              leading: new CircleAvatar(
                                backgroundColor: Colors.pink,
                                child: Text("${_data[position]["body"][0]}".toUpperCase()),

                              ),
                              onTap: () => _showonTapMessage(context, _data[position]["body"]),
                            )
                          ],
                        );
                      }
                  )
              )
          )
  ));
}

void _showonTapMessage(BuildContext context, String message) {
  var alert = new AlertDialog(
    title: Text("My App"),
    content: Text(message),
    actions: <Widget>[
      FlatButton(
        child: Text("OK"),
        onPressed: (){
          Navigator.pop(context);
        },
      )
    ],
  );
  showDialog(context: context, builder: (context) => alert);
}



