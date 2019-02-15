import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_demo/darts/SecondFlutterPageWidget.dart';

/**
 * 第一个页面
 */
class FirstFlutterPageWidget extends StatefulWidget {
  final String title;

  FirstFlutterPageWidget(this.title);

  @override
  _FirstFlutterPageState createState() => _FirstFlutterPageState(title);
}

class _FirstFlutterPageState extends State<FirstFlutterPageWidget> {

  final String _title;

  _FirstFlutterPageState(this._title);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("第一个页面"),
        ),
        body: Column(
          children: <Widget>[
            new FlatButton(
                color: Colors.blue,
                onPressed: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new SecondFlutterPageWidget("传递参数")));
                },
                child: new Text(_title)),
            new FlatButton(
                color: Colors.blue,
                onPressed: () {
                    Navigator.pop(context,"返回参数");
                },
                child: new Text("向主页面传值")),
          ],
        ));
  }
}
