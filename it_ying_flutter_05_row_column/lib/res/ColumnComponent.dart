import 'package:flutter/material.dart';
import 'IconContainerComponent.dart';

class ColumnPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("column demo"),
      ),
      body: Container(
        height: 600,
        width: 600,
        color: Colors.purple,
        child: Column(
          //主轴对齐方式
          mainAxisAlignment: MainAxisAlignment.center,
          //交叉轴对齐方式
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            IconContainer(
              Icons.search,
              color: Colors.blueAccent,
              size: 32,
            ),
            IconContainer(
              Icons.home,
              color: Colors.green,
              size: 40,
            ),
            IconContainer(Icons.brightness_medium,
                color: Colors.yellow, size: 32),
          ],
        ),
      ),
    );
  }
}