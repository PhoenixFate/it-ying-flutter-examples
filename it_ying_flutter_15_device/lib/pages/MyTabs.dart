import 'package:flutter/material.dart';
import 'tabs/Home.dart';
import 'tabs/Category.dart';
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
  List _pageList = [HomePage(), CategoryPage(),MinePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("bottom navigation bar"),
      ),
      body: this._pageList[this._currentIndex],
      floatingActionButton: Container(
        height: 80,
        width: 80,
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.only(top:10),
        // color: Colors.red,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),color: Colors.white),
        child: FloatingActionButton(
          backgroundColor: this._currentIndex!=2? Colors.yellow:Colors.red,
          
          child: Icon(Icons.add,color: Colors.black,),
          onPressed: () {
            //点击跳转到发布页面
            setState(() {
              this._currentIndex=2;
            });

          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
                icon: Icon(Icons.assignment_ind), title: Text("我的")),
          ]),
    );
  }
}
