import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      //交叉轴对齐方式
      crossAxisAlignment: CrossAxisAlignment.center,

      //主轴对齐方式
      mainAxisAlignment: MainAxisAlignment.center,

      children: <Widget>[
        RaisedButton(
          child: Text("local storage"),
          onPressed: () {
            Navigator.pushNamed(context, "/localStorage");
          },
        ),
        RaisedButton(
          child: Text("跨页面获取数据"),
          onPressed: () {
            Navigator.pushNamed(context, "/localStorage2");
          },
        ),
        RaisedButton(
          child: Text("自己封装的storage"),
          onPressed: () {
            Navigator.pushNamed(context, "/mineStorage");
          },
        ),
      ],
    );
  }
}
