import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("stack demo"),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      // alignment: Alignment.centerLeft,
      //Alignment(x,y) x y: -1~1
      //x: -1 left 0 center 1 right
      //y: -1 top 0 center 1 bottom
      // alignment: Alignment(-1,0),

      // fit :用来决定没有Positioned方式时候子Widget的大小，StackFit.loose 指的是子Widget 多大就多大，StackFit.expand使子Widget的大小和父组件一样大
      // fit: StackFit.expand,
      children: <Widget>[
        //默认Stack里面所有的元素都会堆叠在一起
        Positioned(
          top: 100.0,
          child: Container(
            color: Colors.blue,
            child: Text("第一个组件"),
          ),
        ),
        Positioned(
          top: 200,
          right: 100,
          child: Container(
            color: Colors.yellow,
            child: Text("第二个组件"),
          ),
        ),
        Positioned(
          left: 100.0,
          child: Container(
            color: Colors.red,
            child: Text("第三个组件"),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Icon(
            Icons.home,
            size: 40,
            color: Colors.green,
          ),
        ),

        Align(
          alignment: Alignment.centerRight,
          child: Icon(
            Icons.home,
            size: 40,
            color: Colors.greenAccent,
          ),
        ),

        Container(width: 100, height: 110, color: Colors.black)
      ],
    );
  }
}
