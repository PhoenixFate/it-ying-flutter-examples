import 'package:flutter/material.dart';
import 'IconContainerComponent.dart';

class RowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("row demo"),
      ),
      body: Container(
        height: 600.0,
        width: 600.0,
        color: Colors.pink,
        child: Row(
          //水平方向的对齐方式
          //居中
          // mainAxisAlignment: MainAxisAlignment.center,
          //元素与元素之间；元素与边框之间，间距相等
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //垂直方向的对齐方式
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            IconContainer(Icons.home),
            IconContainer(Icons.search, color: Colors.yellow),
            IconContainer(Icons.select_all, color: Colors.blue),
          ],
        ),
      ),
    );
  }
}