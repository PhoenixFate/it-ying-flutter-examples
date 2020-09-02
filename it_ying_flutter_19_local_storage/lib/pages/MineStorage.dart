import 'package:flutter/material.dart';
import '../common/Storage.dart';

class MineStorage extends StatefulWidget {
  @override
  _MineStorageState createState() => _MineStorageState();
}

class _MineStorageState extends State<MineStorage> {
  String _username;

  _getData() async {
    String username = await Storage.getString("username");
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
