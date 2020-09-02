import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage2 extends StatefulWidget {
  @override
  _LocalStorage2State createState() => _LocalStorage2State();
}

class _LocalStorage2State extends State<LocalStorage2> {
  String _username;

  _getData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String username = sharedPreferences.getString("username");
    setState(() {
      _username = username;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("local storage"),
      ),
      body: Column(
        //交叉轴对齐方式
        crossAxisAlignment: CrossAxisAlignment.center,

        //主轴对齐方式
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RaisedButton(
            child: Text("获取数据"),
            onPressed: _getData,
          ),
          Padding(
            //上下左右各添加16像素补白
            padding: EdgeInsets.all(16.0),
            child: Text("username: $_username"),
          )
        ],
      ),
    );
  }
}
