import 'package:flutter/material.dart';

class MineTextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text properties"),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            width: 400,
            height: 50,
            color: Colors.amberAccent,
            child: Text("textAlign 默认"),
          ),
          Container(
            width: 400,
            height: 50,
            color: Colors.yellowAccent,
            child: Text(
              "textAlign: TextAlign.left",
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            width: 400,
            height: 50,
            color: Colors.blueAccent,
            child: Text(
              "textAlign: TextAlign.center",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: 400,
            height: 50,
            color: Colors.greenAccent,
            child: Text(
              "textAlign: TextAlign.right",
              textAlign: TextAlign.right,
            ),
          ),
          Container(
            width: 400,
            height: 50,
            color: Colors.blueAccent,
            child: Row(
              children: <Widget>[
                Text(
                  "TextDirection.ltr,  123",
                  textDirection: TextDirection.ltr,
                ),
                Text(
                  "TextDirection.ltr,  456",
                  textDirection: TextDirection.ltr,
                ),
              ],
            ),
          ),
          Container(
            width: 400,
            height: 50,
            color: Colors.pink,
            child: Row(
              children: <Widget>[
                Text(
                  "TextDirection.rtl,  123",
                  textDirection: TextDirection.rtl,
                ),
                Text(
                  "TextDirection.rtl,  456",
                  textDirection: TextDirection.rtl,
                ),
              ],
            ),
          ),
          Container(
            width: 400,
            height: 60,
            color: Colors.yellow,
            child: Text(
              "文字超出屏幕之后的处理方式（clip裁剪，fade 渐隐，ellipsis 省略号）;文字超出屏幕之后的处理方式（clip裁剪，fade 渐隐，ellipsis 省略号）;",
              overflow: TextOverflow.clip,
            ),
          ),
          Container(
            width: 400,
            height: 60,
            color: Colors.red,
            child: Text(
              "文字超出屏幕之后的处理方式（clip裁剪，fade 渐隐，ellipsis 省略号）maxLines: 2;文字超出屏幕之后的处理方式（clip裁剪，fade 渐隐，ellipsis 省略号）maxLines: 2;",
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
          Container(
            width: 400,
            height: 60,
            color: Colors.green,
            child: Text(
              "textScaleFactor：相当于当前字体大小的缩放比例",
              textScaleFactor: 1.5,
            ),
          ),
          Container(
            width: 400,
            height: 200,
            color: Colors.blueGrey,
            child: Text(
              "这里演示 textStyle 的用法 " * 6,
              style: TextStyle(
                color: Colors.red,
                fontSize: 20.0,
                height: 2.0,
                fontFamily: "MicroSoft Yahei",
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                background: new Paint()..color = Colors.yellow,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.dashed,
              ),
            ),
          ),
          Container(
              width: 400,
              height: 50,
              color: Colors.amber,
              child: Text.rich(TextSpan(children: [
                TextSpan(text: "Home: "),
                TextSpan(
                  text: "https://flutterchina.club",
                  style: TextStyle(color: Colors.blue),
                ),
                TextSpan(
                  text: " 请点击链接",
                  style: TextStyle(
                    color: Colors.red,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ])))
        ],
      ),
    );
  }
}
