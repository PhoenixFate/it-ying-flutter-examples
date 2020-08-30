import 'package:flutter/material.dart';
// import 'dart:convert' as convert;
import 'package:dio/dio.dart';

class DioRequestPage extends StatefulWidget {
  DioRequestPage({Key key}) : super(key: key);

  @override
  _DioRequestPageState createState() => _DioRequestPageState();
}

class _DioRequestPageState extends State<DioRequestPage> {
  _getData() async {
    var url = "http://192.168.1.8:3000/news";
    Response response = await Dio().get(url);
    print(response.data);
  }

  _postData() async {
    var data = {"usrname": "tom", "age": 20};
    var url = "http://192.168.1.8:3000/doLogin";
    Response response = await Dio().post(url, data: data);
    print(response.data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("dio 类库来请求服务"),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text("dio get : "),
            onPressed: _getData,
          ),
          RaisedButton(
            child: Text("dio post : "),
            onPressed: _postData,
          ),
        ],
      ),
    );
  }
}
