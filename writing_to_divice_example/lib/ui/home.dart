import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _enterDataController = new TextEditingController();
  String _savedData = '';

  @override
  void initState() {
    super.initState();
    _loadSaveData();
  }

  _loadSaveData() async {
    SharedPreferences preferernces = await SharedPreferences.getInstance();
    print("OKKKKKKKKKK");
    setState(() {
      if (preferernces.getString("data").isNotEmpty &&
          preferernces.getString("data") != null) {
        _savedData = preferernces.getString('data');
      } else
        _savedData = "Empty SP";
    });
  }

  _saveData(String value) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    setState(() {

      preferences.setString('data', value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("IO example"),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: new Container(
            padding: const EdgeInsets.all(13.4),
            alignment: Alignment.topCenter,
            child: ListView(children: <Widget>[
              new TextField(
                controller: _enterDataController,
                decoration: new InputDecoration(
                  labelText: 'Write Something',
                ),
              ),
              new Padding(padding: const EdgeInsets.all(10.0)),
              new FlatButton(
                  color: Colors.blueGrey,
                  onPressed: () {
                    _saveData(_enterDataController.text);
                  },
                  child: new Column(
                    children: <Widget>[
                      new Padding(padding: const EdgeInsets.all(6.0)),
                      new Text('Save Data'),
                      new Padding(padding: new EdgeInsets.all(14.5)),
                      new Text(_savedData),
                      new FutureBuilder(
                          future: readData(),
                          builder: (BuildContext context,
                              AsyncSnapshot<String> data) {
                            if (data.hasData != null) {
                              return new Text(
                                data.data.toString(),
                                style: new TextStyle(
                                    color: Colors.white, fontSize: 29.9),
                              );
                            } else
                              return Text("no data");
                          }),
                    ],
                  )),
            ])));
  }
}

Future<String> get _localPath async {
  final directory = await getApplicationDocumentsDirectory();
  return directory.path;
}

Future<File> get _localFile async {
  final path = await _localPath;
  return new File('$path/data.txt');
}

Future<File> writeData(String message) async {
  final file = await _localFile;
  return file.writeAsString('$message');
}

Future<String> readData() async {
  try {
    final file = await _localFile;
    String data = await file.readAsString();
    return data;
  } catch (e) {
    return "Nothing";
  }
}
