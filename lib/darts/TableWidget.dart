import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TableWidget extends StatefulWidget {
  @override
  TableWidgetState createState() => new TableWidgetState();
}

class TableWidgetState extends State<TableWidget> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Table表格'),
      ),

      body: Table(columnWidths:const<int,TableColumnWidth>{
        0:FixedColumnWidth(60.0),
        1:FixedColumnWidth(100.0),
        2:FixedColumnWidth(100.0),
        3:FixedColumnWidth(80.0),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      border: TableBorder.all(color: Color(0xff16DAF1), width: 1.0, style: BorderStyle.solid),
      children: const<TableRow>[
        TableRow(
          children: <Widget>[
            Center(child: Text('姓名'),),
            Center(child: Text('年龄'),),
            Center(child: Text('称号'),),
            Center(child: Text('武器'),),
          ]
        ),

        TableRow(
            children: <Widget>[
              Center(child: Text('姓名'),),
              Center(child: Text('年龄'),),
              Center(child: Text('称号'),),
              Center(child: Text('武器'),),
            ]
        ),

        TableRow(
            children: <Widget>[
              Center(child: Text('姓名'),),
              Center(child: Text('年龄'),),
              Center(child: Text('称号'),),
              Center(child: Text('武器'),),
            ]
        ),

        TableRow(
            children: <Widget>[
              Center(child: Text('姓名'),),
              Center(child: Text('年龄'),),
              Center(child: Text('称号'),),
              Center(child: Text('武器'),),
            ]
        )
      ],),

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
  void didUpdateWidget(TableWidget oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
}