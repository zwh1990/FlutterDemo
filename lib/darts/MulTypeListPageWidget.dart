import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_demo/biz/JsonListBean.dart';
import 'package:flutter_app_demo/biz/ListViewBean.dart';

/**
 * 分类型的listView
 */
class MulTypeListPageWidget extends StatefulWidget {
  @override
  _MulTypeListPageWidget createState() => _MulTypeListPageWidget();
}

class _MulTypeListPageWidget extends State<MulTypeListPageWidget> {
  List<ListViewBean> list = new List();
  var currentPage = 1;
  ScrollController _controller = new ScrollController();

  _MulTypeListPageWidget() {
    _controller.addListener(() {
      var maxScroll = _controller.position.maxScrollExtent;
      var pixels = _controller.position.pixels;

      if (maxScroll == pixels && list.length < 100) {
        setState(() {
          _pullData();
        });
      }
    });
  }

  void _pullData() async {
    var api = 'https://www.easy-mock.com/mock/5c6a7acd5c189d024fa5ec6e/getList';

    Dio dio = new Dio();
    print("开始请求--->");
    Response response = await dio.post(api);
    print(response.data);
    var data = JsonListBean.fromJson(response.data);
    setState(() {
      for (var value in data.result) {
        list.add(ListViewBean.fromJson(value));
      }
    });

    //获取数据
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pullData();
  }

  Widget listViewLayoutSeparated(List<ListViewBean> list) {
    return ListView.separated(
      itemCount: list.length,
      separatorBuilder: (content, index) {
        //和itemBuilder 同级别的执行
        if (index == 2) {
          return new Container(
            height: 40.0,
            child: new Center(
              child: new Text("类型1"),
            ),
            color: Colors.red,
          );
        } else if (index == 7) {
          return new Container(
            height: 40.0,
            child: new Center(
              child: new Text("类型2"),
            ),
            color: Colors.blue,
          );
        } else if (index == 14) {
          return new Container(
            height: 40.0,
            child: new Center(
              child: new Text("类型3"),
            ),
            color: Colors.yellow,
          );
        } else {
          return Divider(height: 1.0, color: Colors.blue);
        }
      },
      itemBuilder: (content, i) {
        return new InkWell(
          child: new Container(
              height: 50.0,
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new Text(
                    "${list[i].name}",
                    style: new TextStyle(fontSize: 18.0, color: Colors.red),
                  ),
                  new Text(
                    "${list[i].age}",
                    style: new TextStyle(fontSize: 18.0, color: Colors.green),
                  ),
                  new Text(
                    "${list[i].sex}",
                    style: new TextStyle(fontSize: 18.0, color: Colors.blue),
                  ),
                ],
              )),
          onTap: () {
            print("---> $i");
          },
        );
//      return ;
      },
      controller: _controller,
    );
  }

  Future<void> _onRefresh() async {
    await Future.delayed(Duration(seconds: 2), () {
      print("开始刷新");
      setState(() {
        list.clear();
        _pullData();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("分类型的列表页面"),
      ),

      body: RefreshIndicator(
          child: listViewLayoutSeparated(list), onRefresh: _onRefresh),

//      body: listViewLayoutSeparated(list),
    );
  }
}
