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
          child: Text("floating action button page"),
          onPressed: () {
            Navigator.pushNamed(context, "/floatingPage");
          },
        ),
        RaisedButton(
          child: Text("表单text field 常用样式"),
          onPressed: () {
            Navigator.pushNamed(context, "/textField");
          },
        ),
        RaisedButton(
          child: Text("从表单中 获取数据"),
          onPressed: () {
            Navigator.pushNamed(context, "/textFieldValue");
          },
        ),
        RaisedButton(
          child: Text("checkbox"),
          onPressed: () {
            Navigator.pushNamed(context, "/checkbox");
          },
        ),
        RaisedButton(
          child: Text("radio"),
          onPressed: () {
            Navigator.pushNamed(context, "/radio");
          },
        ),
        RaisedButton(
          child: Text("form demo"),
          onPressed: () {
            Navigator.pushNamed(context, "/formDemo");
          },
        ),
        RaisedButton(
          child: Text("flutter自带的日期插件"),
          onPressed: () {
            Navigator.pushNamed(context, "/date");
          },
        ),
        RaisedButton(
          child: Text("第三方的日期插件"),
          onPressed: () {
            Navigator.pushNamed(context, "/dateOthers");
          },
        ),
        FlatButton(
          child: Text("轮播图的基本使用"),
          onPressed: () {
            Navigator.pushNamed(context, "/swiper");
          },
        ),
        FlatButton(
          child: Text("dialog的基本使用"),
          onPressed: () {
            Navigator.pushNamed(context, "/dialog");
          },
        ),
      ],
    );
  }
}
