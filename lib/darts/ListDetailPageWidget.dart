import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListDetailPageWidget extends StatefulWidget {
  @override
  _ListDetailPageWidget createState() => _ListDetailPageWidget();
}

class _ListDetailPageWidget extends State<ListDetailPageWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("列表详情页面"),
      ),
      body: new Container(
        child: new Center(child: Text("列表详情页面",style: TextStyle(fontSize:30,color: Colors.red),)),
        color: Colors.white,
      ),
    );
  }
}
