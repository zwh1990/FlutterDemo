import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpandedWidget extends StatefulWidget {
  @override
  ExpandedWidgetState createState() => new ExpandedWidgetState();
}

class ExpandedWidgetState extends State<ExpandedWidget> {
  final TextStyle textColor = TextStyle(color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Expanded的使用'),
      ),
      body: Column(
        children: <Widget>[
          Text("Expanded"),
          Row(
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  print("点击红色按钮事件");
                },
                color: const Color(0xffcc0000),
                child: Text("红色按钮", style: textColor),
              ),
              Expanded(
                flex: 1,
                child: RaisedButton(
                    onPressed: () {
                      print("点击黄色按钮事件");
                    },
                    color: const Color(0xfff1c232),
                    child: Text(
                      "黄色按钮",
                      style: textColor,
                    )),
              ),
              RaisedButton(
                onPressed: () {
                  print("点击粉色按钮事件");
                },
                color: const Color(0xffea9999),
                child: Text(
                  "粉色按钮",
                  style: textColor,
                ),
              )
            ],
          ),
          Text("Flexible"),
          Row(
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  print("点击红色按钮事件");
                },
                color: const Color(0xffcc0000),
                child: Text(
                  "红色按钮",
                  style: textColor,
                ),
              ),
              Flexible(
                flex: 1,
                child: RaisedButton(
                  onPressed: () {
                    print("点击黄色按钮事件");
                  },
                  color: const Color(0xfff1c232),
                  child: Text(
                    "黄色按钮",
                    style: textColor,
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  print("点击粉色按钮事件");
                },
                color: const Color(0xffea9999),
                child: Text(
                  "粉色按钮",
                  style: textColor,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void didUpdateWidget(ExpandedWidget oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
}
