import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * 流式布局
 */
class FlowDelegateWidget extends StatefulWidget {
  @override
  FlowDelegateWidgetState createState() => new FlowDelegateWidgetState();
}

class FlowDelegateWidgetState extends State<FlowDelegateWidget> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('流式布局'),
      ),
    );
  }


  formColorList(int count) {
    var random = new Random();
    var li = <Widget>[];

    for (int i = 0; i < count; i++) {
      li.add(new Container(
        width: 100 * (random.nextDouble() + 0.3),
        height: 30,
        color: Colors.blue,
      ));
    }
    return li;
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
  void didUpdateWidget(FlowDelegateWidget oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

}