import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 *  卡片的使用
 */
class CardWidget extends StatefulWidget {
  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: Text("Card的使用")),
        body: Card(
          clipBehavior: Clip.antiAlias,
          color: Colors.green,
          elevation: 10.0,
          margin: EdgeInsets.all(15.0),
          semanticContainer: true,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.access_time),
                title: Text("The card",
                    style: TextStyle(color: Colors.white, fontSize: 40.0)),
                subtitle: Text("subTitle",
                    style: TextStyle(color: Colors.yellow, fontSize: 16.0)),
                contentPadding: EdgeInsets.all(20.0),
              ),
              ButtonTheme.bar(
                child: ButtonBar(
                  children: <Widget>[
                    FlatButton(
                      child: Text("按钮"),
                      onPressed: () {
                        print("打印按钮--->");
                      },
                    ),
                    FlatButton(
                      child: Text("按钮"),
                      onPressed: () {
                        print("打印按钮--->");
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
