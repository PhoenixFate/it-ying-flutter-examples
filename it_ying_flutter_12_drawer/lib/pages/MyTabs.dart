import 'package:flutter/material.dart';
import 'tabs/Home.dart';
import 'tabs/Category.dart';
import 'tabs/Settings.dart';
import 'tabs/Mine.dart';

class MyTabs extends StatefulWidget {
  final int index;

  MyTabs({Key key, this.index = 0}) : super(key: key);
  @override
  _MyTabsState createState() => _MyTabsState(this.index);
}

class _MyTabsState extends State<MyTabs> {
  _MyTabsState(index) {
    this._currentIndex = index;
  }

  int _currentIndex = 0;
  List _pageList = [HomePage(), CategoryPage(), SettingsPage(), MinePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("bottom navigation bar"),
      ),
      body: this._pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          //图标大小，默认24
          iconSize: 30,
          //选中的颜色
          fixedColor: Colors.red,
          //设置默认第几个被选中
          currentIndex: this._currentIndex,
          //配置底部tabs可以有多个按钮
          //tabs底部的按钮>3个的时候，会掉下去，需要设置此属性
          type: BottomNavigationBarType.fixed,
          //点击导航栏的触发事件
          onTap: (int index) {
            setState(() {
              this._currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("首页")),
            BottomNavigationBarItem(
                icon: Icon(Icons.category), title: Text("分类")),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), title: Text("设置")),
            BottomNavigationBarItem(
                icon: Icon(Icons.assignment_ind), title: Text("设置")),
          ]),

      //抽屉组件：Drawer，需要定义在Scaffold 组件当中
      //页面从左向右滑动，弹出抽屉组件
      //从左边弹出的抽屉组件
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: DrawerHeader(
                    child: Text("drawer header"),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://www.itying.com/images/flutter/1.png"),
                            fit: BoxFit.fill)),
                  ),
                )
              ],
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.home),
              ),
              title: Text("我的空间"),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.people),
              ),
              title: Text("用户中心"),
              onTap: (){
                //去掉上一个页面，也就是隐藏掉侧边栏
                Navigator.pop(context);
                Navigator.pushNamed(context, "/userCenter");
              },
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.settings),
              ),
              title: Text("设置"),
            ),
            Divider(),
          ],
        ),
      ),

      //从右边弹出的抽屉组件
      endDrawer: Drawer(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: UserAccountsDrawerHeader(
                    accountName: Text("user account drawer header"),
                    accountEmail: Text("sm516116978@outlook.com"),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://www.itying.com/images/flutter/3.png"),
                    ),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://www.itying.com/images/flutter/1.png"),
                            fit: BoxFit.fill)),
                    otherAccountsPictures: <Widget>[
                      Image.network(
                          "https://www.itying.com/images/flutter/4.png"),
                      Image.network(
                          "https://www.itying.com/images/flutter/5.png"),
                      Image.network(
                          "https://www.itying.com/images/flutter/2.png"),
                      Image.network(
                          "https://www.itying.com/images/flutter/4.png"),
                      Image.network(
                          "https://www.itying.com/images/flutter/5.png"),
                      Image.network(
                          "https://www.itying.com/images/flutter/2.png"),
                    ],
                  ),
                )
              ],
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.home),
              ),
              title: Text("我的空间"),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.people),
              ),
              title: Text("用户中心"),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.settings),
              ),
              title: Text("设置"),
            ),
          ],
        ),
      ),
    );
  }
}
