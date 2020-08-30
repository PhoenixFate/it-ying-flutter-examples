import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State {
  List list = new List();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("list page demo"),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: this.list.map((value) {
              return ListTile(
                title: Text(value),
              );
            }).toList(),
          ),
          RaisedButton(
            child: Text("添加一个数组元素"),
            onPressed: () {
              setState(() {
                this.list.add("一个新数据");
              });
            },
          )
        ],
      ),
    );
  }
}
