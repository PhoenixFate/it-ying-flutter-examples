import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage extends StatefulWidget {
  @override
  _LocalStorageState createState() => _LocalStorageState();
}

class _LocalStorageState extends State<LocalStorage> {
  String _username;
  int _age;

  _saveData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString("username", "tom");
    sharedPreferences.setInt("age", 18);
  }

  _getData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String username = sharedPreferences.getString("username");
    int age = sharedPreferences.getInt("age");
    setState(() {
      _username = username;
      _age = age;
    });
  }

  _cleanData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.clear();
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
            child: Text("保存数据"),
            onPressed: _saveData,
          ),
          RaisedButton(
            child: Text("获取数据"),
            onPressed: _getData,
          ),
          RaisedButton(
            child: Text("清除数据"),
            onPressed: _cleanData,
          ),
          Padding(
            //上下左右各添加16像素补白
            padding: EdgeInsets.all(16.0),
            child: Text("username: $_username"),
          ),
          Padding(
            //上下左右各添加16像素补白
            padding: EdgeInsets.all(16.0),
            child: Text("age: $_age"),
          ),
        ],
      ),
    );
  }
}
