import 'package:flutter/material.dart';

import 'dart:convert' as convert;
import 'package:dio/dio.dart' as dio;


class DioDemo extends StatefulWidget {
  DioDemo({Key key}) : super(key: key);

  @override
  _DioDemoState createState() => _DioDemoState();
}

class _DioDemoState extends State<DioDemo> {
  List _list = [];

  @override
  void initState() {
    super.initState();
    this._getData();
  }

  _getData() async {
    var apiUrl =
        "http://www.phonegap100.com/appapi.php?a=getPortalList&catid=20&page=1";
    dio.Response result = await dio.Dio().get(apiUrl);
    setState(() {
      this._list = convert.json.decode(result.data)["result"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("dio demo"),
        ),
        body: this._list.length>0?ListView.builder(
          itemCount: this._list.length,
          itemBuilder: (context,index){
            return ListTile(title: Text(this._list[index]["title"]),);
          }):Text("加载中..."));
  }
}
