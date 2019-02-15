import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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

  _MulTypeListPageWidget() {
    for (int i = 0; i < 30; i++) {
      list.add(new ListViewBean("张三", "15", "男"));
    }
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
    );
  }

  Future<void> _onRefresh() async{
    await Future.delayed(Duration(seconds:2),(){
        print("开始刷新");
        setState(() {
          list.clear();
          for (int i = 0; i < 15; i++) {
            list.add(new ListViewBean("lisi", "15", "男"));
          }
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

      body: RefreshIndicator(child: listViewLayoutSeparated(list),
          onRefresh: _onRefresh),

//      body: listViewLayoutSeparated(list),
    );
  }


}
