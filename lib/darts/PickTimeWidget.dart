import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PickTimeWidget extends StatefulWidget {
  @override
  _PickTimeWidgetState createState() => _PickTimeWidgetState();
}

class _PickTimeWidgetState extends State<PickTimeWidget> {
  DateTime _date = DateTime.now();
  TimeOfDay _time = TimeOfDay.now();

  /*
  选择日期
   */
  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: _date,
        firstDate: DateTime(2015, 5),
        lastDate: DateTime(2019, 5));

    if (picked != null && picked != _date) {
      print("data seletd ：${_date.toString()}");
      setState(() {
        _date = picked;
      });
    }

    if (picked == null) {
      _date = DateTime.now();
    }
  }

  /*
  选择时间
   */
  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay picked =
        await showTimePicker(context: context, initialTime: _time);

    if (picked != null && picked != _time) {
      print("data seletd ：${_time.toString()}");
      setState(() {
        _time = picked;
      });
    }

    if (picked == null) {
      _time = TimeOfDay.now();
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: AppBar(
          title: Text("时间选择"),
        ),
        body: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Text("日期选择"),
                RaisedButton(
                  child: Text("date selected: ${_date.toString()}"),
                  onPressed: () {
                    _selectDate(context);
                  },
                ),
                Text("时间选择"),
                RaisedButton(
                  child: Text("time selected: ${_time.toString()}"),
                  onPressed: () {
                    _selectTime(context);
                  },
                )
              ],
            )
        ));
  }
}
