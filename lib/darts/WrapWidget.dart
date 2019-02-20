import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WrapWidget extends StatefulWidget {
  @override
  WrapWidgetState createState() => new WrapWidgetState();
}

class WrapWidgetState extends State<WrapWidget> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('包裹内容'),
      ),
      body: Wrap(
        spacing: 8.0,
        runSpacing: 4.0,
        direction: Axis.horizontal,
        alignment: WrapAlignment.spaceBetween,
        children: formColorList(30),
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
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
}
