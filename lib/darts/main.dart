import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_demo/darts/CameraAppA.dart';
import 'package:flutter_app_demo/darts/CameraAppB.dart';
import 'package:flutter_app_demo/darts/CardWidget.dart';
import 'package:flutter_app_demo/darts/ChipWidget.dart';
import 'package:flutter_app_demo/darts/CustomScrollViewWidget.dart';
import 'package:flutter_app_demo/darts/ExpandedWidget.dart';
import 'package:flutter_app_demo/darts/FirstFlutterPageWidget.dart';
import 'package:flutter_app_demo/darts/FiveStartWidget.dart';
import 'package:flutter_app_demo/darts/FlowDelegateWidget.dart';
import 'package:flutter_app_demo/darts/InputWidget.dart';
import 'package:flutter_app_demo/darts/ListPageWidget.dart';
import 'package:flutter_app_demo/darts/MapGpsLocationWidget.dart';
import 'package:flutter_app_demo/darts/MulTypeListPageWidget.dart';
import 'package:flutter_app_demo/darts/PickTimeWidget.dart';
import 'package:flutter_app_demo/darts/PoupMenuButtonDemo.dart';
import 'package:flutter_app_demo/darts/TableWidget.dart';
import 'package:flutter_app_demo/darts/WrapWidget.dart';
import 'package:fluttertoast/fluttertoast.dart';

Future<void> main() async {
  cameras = await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: CustomScrollView(
          shrinkWrap: true,
          slivers: <Widget>[
            new SliverPadding(
              padding: const EdgeInsets.all(20.0),
              sliver: new SliverList(
                  delegate: new SliverChildListDelegate(<Widget>[
                FlatButton(
                    color: Colors.blue,
                    onPressed: () {
                      Navigator.push<String>(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) =>
                                      new FirstFlutterPageWidget("主页面传递过来的参数")))
                          .then((onValue) {
                        Fluttertoast.showToast(msg: onValue);
                        print("开始更新页面数据 --->");
                        setState(() {});
                      });
                    },
                    child: new Text("开启新页面")),
                FlatButton(
                    color: Colors.blue,
                    onPressed: () {
                      Navigator.push<String>(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new ListPageWidget(2)));
                    },
                    child: new Text("列表页面")),
                FlatButton(
                    color: Colors.blue,
                    onPressed: () {
                      Navigator.push<String>(
                          context,
                          new MaterialPageRoute(
                              builder: (context) =>
                                  new MulTypeListPageWidget()));
                    },
                    child: new Text("分type列表页面")),
                FlatButton(
                    color: Colors.blue,
                    onPressed: () {
                      Navigator.push<String>(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new CardWidget()));
                    },
                    child: new Text("卡片的使用")),
                FlatButton(
                    color: Colors.blue,
                    onPressed: () {
                      Navigator.push<String>(
                          context,
                          new MaterialPageRoute(
                              builder: (context) =>
                                  new CustomScrollViewWidget()));
                    },
                    child: new Text("滑动ScrollView 的使用")),
                FlatButton(
                    color: Colors.blue,
                    onPressed: () {
                      Navigator.push<String>(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new PickTimeWidget()));
                    },
                    child: new Text("时间pick选择")),
                FlatButton(
                    color: Colors.blue,
                    onPressed: () {
                      Navigator.push<String>(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new ChipWidget()));
                    },
                    child: new Text("Chip的使用")),
                FlatButton(
                    color: Colors.blue,
                    onPressed: () {
                      Navigator.push<String>(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new TableWidget()));
                    },
                    child: new Text("Table的使用")),
                FlatButton(
                    color: Colors.blue,
                    onPressed: () {
                      Navigator.push<String>(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new FlowDelegateWidget()));
                    },
                    child: new Text("FlowDelegateWidget的使用")),
                FlatButton(
                    color: Colors.blue,
                    onPressed: () {
                      Navigator.push<String>(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new WrapWidget()));
                    },
                    child: new Text("wrap的使用")),
                FlatButton(
                    color: Colors.blue,
                    onPressed: () {
                      Navigator.push<String>(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new FiveStartWidget()));
                    },
                    child: new Text("绘制五角星")),
                FlatButton(
                    color: Colors.blue,
                    onPressed: () {
                      Navigator.push<String>(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new CameraAppA()));
                    },
                    child: new Text("相机A")),
                FlatButton(
                    color: Colors.blue,
                    onPressed: () {
                      Navigator.push<String>(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new CameraAppB()));
                    },
                    child: new Text("相机B")),
                FlatButton(
                    color: Colors.blue,
                    onPressed: () {
                      Navigator.push<String>(
                          context,
                          new MaterialPageRoute(
                              builder: (context) =>
                                  new MapGpsLocationWidget()));
                    },
                    child: new Text("Gps地图定位")),
                FlatButton(
                    color: Colors.blue,
                    onPressed: () {
                      Navigator.push<String>(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new ExpandedWidget()));
                    },
                    child: new Text("Expanded的使用")),
                FlatButton(
                    color: Colors.blue,
                    onPressed: () {
                      Navigator.push<String>(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new InputWidget()));
                    },
                    child: new Text("自定义输入布局")),
                FlatButton.icon(
                    onPressed: () {
                      print("flatButton icon 被点击");
                    },
                    icon: Icon(
                      Icons.add_circle,
                      color: Colors.brown,
                    ),
                    label: Text("带icon的button")),
                RaisedButton(
                    color: Colors.blue,
                    onPressed: () {
                      print("raisedButton 被点击");
                    },
                    child: new Text("raise 按钮")),
                RaisedButton.icon(
                    onPressed: () {
                      print("raisedButton 被点击");
                    },
                    icon: Icon(
                      Icons.add_circle,
                      color: Colors.brown,
                    ),
                    label: Text("带icon的button")),
                IconButton(
                  icon: Icon(Icons.volume_up),
                  tooltip: "increase  10%",
                  onPressed: () {
                    print("icon 被点击");
                  },
                ),
                FlatButton(
                    color: Colors.brown,
                    onPressed: () {
                      Navigator.push<String>(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new PoupMenuButtonDemo()));
                    },
                    child: Text("popupMenu的使用")),
              ])),
            )
          ],
        ));
  }
}
