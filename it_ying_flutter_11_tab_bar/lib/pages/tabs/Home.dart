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
      crossAxisAlignment: CrossAxisAlignment.start,

      //主轴对齐方式
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(child: Text("home page"),),
        RaisedButton(
          child: Text("跳转到 app bar 常见属性"),
          onPressed: (){
            Navigator.pushNamed(context, "/appBar");
          },
        ),
        RaisedButton(
          child: Text("跳转到 app bar 常见属性"),
          onPressed: (){
            Navigator.pushNamed(context, "/tabBar");
          },
        ),
        RaisedButton(
          child: Text("使用 tabController 实现 tab 切换"),
          onPressed: (){
            Navigator.pushNamed(context, "/tabController");
          },
        )
    
      ],
    );
  }
}
