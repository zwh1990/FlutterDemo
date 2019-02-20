import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * 绘制五角星
 */
class FiveStartWidget extends StatefulWidget {
  @override
  FiveStartWidgetState createState() => new FiveStartWidgetState();
}

class FiveStartWidgetState extends State<FiveStartWidget> {

  double _R = 25;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('绘制五角星'),
      )
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
  void didUpdateWidget(FiveStartWidget oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
}