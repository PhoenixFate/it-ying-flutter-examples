import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("app bar demo"),

        //标题是否居中显示
        centerTitle: true,

        //导航栏背景色
        backgroundColor: Colors.red,
        //左侧添加按钮图标
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),

        //导航栏右侧添加按钮
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
        
      ),
      body: Text("hello"),
    );
  }
}
