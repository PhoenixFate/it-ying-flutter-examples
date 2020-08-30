import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("tab 切换"),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  text: "热门",
                ),
                Tab(text: "推荐"),
              ],
            ),
          ),
          body: TabBarView(children: <Widget>[
            ListView(children: <Widget>[
              ListTile(title: Text("热门第一个tab"),),
              ListTile(title: Text("热门第二个tab"),),
              ListTile(title: Text("热门第三个tab"),),
              ListTile(title: Text("热门第四个tab"),)

            ],),
            ListView(children: <Widget>[
              ListTile(title: Text("推荐第一个tab"),),
              ListTile(title: Text("推荐第二个tab"),),
              ListTile(title: Text("推荐第三个tab"),),
              ListTile(title: Text("推荐第四个tab"),)

            ],),
          ],),
        ));
  }
}
