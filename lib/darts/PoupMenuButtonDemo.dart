import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PoupMenuButtonDemo extends StatefulWidget {
  @override
  _PoupMenuButtonDemoState createState() => _PoupMenuButtonDemoState();
}

class _PoupMenuButtonDemoState extends State<PoupMenuButtonDemo> {
  final String value1 = "Menu item value one";
  final String value2 = "Menu item value two";
  final String value3 = "Menu item value three";

  String value;

  void showMenuSelecction(String value) {
    if (<String>[value1, value2, value3].contains(value)) this.value = value;
    Scaffold.of(context)
        .showSnackBar(SnackBar(content: Text("You selected $value")));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        children: <Widget>[
          ListTile(
            title: const Text("An item with a context menu button"),
            trailing: PopupMenuButton<String>(
              padding: EdgeInsets.zero,
              onSelected: showMenuSelecction,
              itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
                    PopupMenuItem<String>(
                      value: value1,
                      child: const Text("context menu item one"),
                    ),
                    const PopupMenuItem<String>(
                        enabled: false, child: Text("A disabled menu item")),
                    PopupMenuItem<String>(
                      value: value3,
                      child: const Text("Context menu item three"),
                    )
                  ],
            ),
          ),

          ListTile(
            title: const Text("An item with a context menu button"),
            trailing: PopupMenuButton<String>(
              padding: EdgeInsets.zero,
              onSelected: showMenuSelecction,
              itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
                PopupMenuItem<String>(
                  value: value1,
                  child: const Text("context menu item one"),
                ),
                const PopupMenuItem<String>(
                    enabled: false, child: Text("A disabled menu item")),
                PopupMenuItem<String>(
                  value: value3,
                  child: const Text("Context menu item three"),
                )
              ],
            ),
          )

        ],
      ),
    );
  }
}
