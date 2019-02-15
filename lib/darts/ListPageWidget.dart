import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_demo/darts/ListDetailPageWidget.dart';
import 'package:flutter_app_demo/darts/SecondFlutterPageWidget.dart';

/**
 * 列表页面
 */
class ListPageWidget extends StatelessWidget {
  final index;

  const ListPageWidget(this.index) : super();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    switch (index) {
      case 0:
        return new Scaffold(
          appBar: AppBar(
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            title: Text("列表页面"),
          ),
          body: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.all(20.0),
            children: <Widget>[
              Text("I am dedicating every day to you"),
              ListTile(leading: Icon(Icons.map), title: Text("Maps")),
              Text("Domestic life was never quite my style"),
              ListTile(leading: Icon(Icons.photo_album), title: Text("Album")),
              Text("when you smile,you knock me out,I fall apart"),
              ListTile(leading: Icon(Icons.phone), title: Text("Phone")),
              Text("And I thought I was so smart"),
            ],
          ),
        );
        break;

      case 1:
        return new Scaffold(
          appBar: AppBar(
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            title: Text("列表页面"),
          ),
          body: SizedBox(
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 30,
                itemExtent: 50.0,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text("title $index"),
                    leading: Icon(Icons.keyboard),
                    subtitle: Text("subtitle $index"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    isThreeLine: false,
                    dense: true,
                    contentPadding: EdgeInsets.all(10.0),
                    enabled: true,
                    onTap: () {
                      print("点击:$index");
                    },
                    onLongPress: () {
                      print("长按:  $index");
                    },
                    selected: false,
                  );
                }),
          ),
        );
        break;

      case 2:
        return new Scaffold(
          appBar: AppBar(
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            title: Text("列表页面"),
          ),
          body: SizedBox(
            child: ListView.separated(
                scrollDirection: Axis.vertical,
                itemCount: 30,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text("title $index"),
                    leading: Icon(Icons.keyboard),
                    subtitle: Text("subtitle $index"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    isThreeLine: false,
                    dense: true,
                    contentPadding: EdgeInsets.all(10.0),
                    enabled: true,
                    onTap: () {
                      Navigator.push<String>(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new ListDetailPageWidget()));
                    },
                    onLongPress: () {
                      print("长按:  $index");
                    },
                    selected: false,
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    Divider(height: 1.0, color: Colors.blue)),
          ),
        );

        break;

      case 3:
        return new Scaffold(
            appBar: AppBar(
              // Here we take the value from the MyHomePage object that was created by
              // the App.build method, and use it to set our appbar title.
              title: Text("列表页面"),
            ),
            body: SizedBox(
              child: ListView.custom(
                scrollDirection: Axis.vertical,
                childrenDelegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return Container(
                    height: 50.0,
                    alignment: Alignment.center,
                    color: Colors.lightBlue[100 * (index % 9)],
                    child: Text("list item $index"),
                  );
                }, childCount: 50),
              ),
            ));

        break;

      default:
        return null;
        break;
    }
  }
}
