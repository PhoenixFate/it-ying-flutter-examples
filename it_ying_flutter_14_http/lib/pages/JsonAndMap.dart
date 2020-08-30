import 'package:flutter/material.dart';
import 'dart:convert';


class JsonAndMapPage extends StatefulWidget {
  JsonAndMapPage({Key key}) : super(key: key);

  @override
  _JsonAndMapPageState createState() => _JsonAndMapPageState();
}

class _JsonAndMapPageState extends State<JsonAndMapPage> {

  final mapData={"name":"张三","age":20};
  final strData='{"name":"张三","age":20}';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("json 和 map 之间互转"),
      ),
      body: Column(children: <Widget>[
        Text("Map 转 Json字符串:"),
        Text("json.encode(mapData)"),
        Text("转换后的 json 字符串"),
        Text(json.encode(mapData).toString()),

        Divider(),

        Text("json字符串转Map"),
        Text("json.decode(strData)"),
        Text("转换后的 map"),
        Text(json.decode(strData).toString()),
      ],),
    );
  }
}
