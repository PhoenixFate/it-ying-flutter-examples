import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("card page demo"),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            elevation: 8.0,  //设置阴影
            margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
            //ListView里面不能再包含ListView
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text("张三",style: TextStyle(fontSize: 28),),
                  subtitle: Text("高级工程师"),
                ),
                new Divider(),
                ListTile(
                  title: Text("电话：18751801512"),
                ),
                ListTile(
                  title: Text("地址：北京朝阳区南平路128号",),
                )
              ],
            ),
          ),

          Card(
            elevation: 8.0,  //设置阴影
            margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
            //ListView里面不能再包含ListView
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text("张三",style: TextStyle(fontSize: 28),),
                  subtitle: Text("高级工程师"),
                ),
                new Divider(),
                ListTile(
                  title: Text("电话：18751801512"),
                ),
                ListTile(
                  title: Text("地址：北京朝阳区南平路128号",),
                )
              ],
            ),
          ),
          Card(
            elevation: 8.0,  //设置阴影
            margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
            //ListView里面不能再包含ListView
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text("张三",style: TextStyle(fontSize: 28),),
                  subtitle: Text("高级工程师"),
                ),
                new Divider(),
                ListTile(
                  title: Text("电话：18751801512"),
                ),
                ListTile(
                  title: Text("地址：北京朝阳区南平路128号",),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
