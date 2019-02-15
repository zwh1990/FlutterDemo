import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * 滑动scrollView
 */
class CustomScrollViewWidget extends StatefulWidget {
  @override
  _CustomScrollViewWidget createState() => _CustomScrollViewWidget();
}

class _CustomScrollViewWidget extends State {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("滑动scrollView"),
      ),
      body: CustomScrollView(
        shrinkWrap: true,
        slivers: <Widget>[
          new SliverPadding(padding: const EdgeInsets.all(20.0),
            sliver: new SliverList(delegate: new SliverChildListDelegate(<Widget>[
              const Text('A'),
              const Text('B'),
              const Text('C'),
              const Text('D'),
              const Text('A'),
              const Text('B'),
              const Text('C'),
              const Text('D'),
              const Text('A'),
              const Text('B'),
              const Text('C'),
              const Text('D'),
              const Text('A'),
              const Text('B'),
              const Text('C'),
              const Text('D'),
              const Text('A'),
              const Text('B'),
              const Text('C'),
              const Text('D'),
              const Text('A'),
              const Text('B'),
              const Text('C'),
              const Text('D'),
              const Text('A'),
              const Text('B'),
              const Text('C'),
              const Text('D'),
              const Text('A'),
              const Text('B'),
              const Text('C'),
              const Text('D'),
              const Text('A'),
              const Text('B'),
              const Text('C'),
              const Text('D'),
              const Text('A'),
              const Text('B'),
              const Text('C'),
              const Text('D'),
              const Text('A'),
              const Text('B'),
              const Text('C'),
              const Text('D'),
            ])),)
        ],
      ),
    );
  }
}
