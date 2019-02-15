import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondFlutterPageWidget extends StatefulWidget {
  final String title;

  SecondFlutterPageWidget(this.title);

  @override
  _SecondFlutterPageState createState() => _SecondFlutterPageState(title);
}

class _SecondFlutterPageState extends State<SecondFlutterPageWidget> {
  final String _title;

  _SecondFlutterPageState(this._title);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("第二个页面"),
        ),
        body: FlatButton(color: Colors.blue, child: new Text(_title)));
  }
}
