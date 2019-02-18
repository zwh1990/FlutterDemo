import 'package:flutter/material.dart';

class ChipWidget extends StatefulWidget {
  @override
  ChipWidgetState createState() => new ChipWidgetState();
}

class ChipWidgetState extends State<ChipWidget> {
  String dec = "点击回收";
  int count = 0;

  _modify() {
    setState(() {
      dec = "delete success : $count";
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('chip 的使用'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            child: Chip(
              padding: EdgeInsets.only(right: 20),
              avatar: CircleAvatar(
                  backgroundColor: Colors.red.shade200,
                  child: Text("A", style: TextStyle(color: Colors.white))),
              label: Text("pai mai",
                  style: TextStyle(color: Colors.white, fontSize: 18.0)),
              backgroundColor: Colors.red.shade100,
              labelPadding: EdgeInsets.all(6.0),
            ),
          ),

          Container(
            height: 100.0,
            child: Chip(
              label: Text(dec),
              avatar: CircleAvatar(
                  child: Icon(Icons.account_circle, color: Colors.red.shade200),
                  backgroundColor: Colors.white),
              backgroundColor: Colors.red.shade100,
              clipBehavior: Clip.antiAlias,
              labelPadding: EdgeInsets.all(8.0),
              deleteIcon: Icon(Icons.delete, color: Colors.white, size: 20.0),
              onDeleted: () {
                count++;
                _modify();
              },
              deleteButtonTooltipMessage: "删除",
              deleteIconColor: Colors.blueGrey.shade100,
              materialTapTargetSize: MaterialTapTargetSize.padded,
              padding: EdgeInsets.all(2.0),
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
            ),
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
  void didUpdateWidget(ChipWidget oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
}
