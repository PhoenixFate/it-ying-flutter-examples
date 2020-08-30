import 'package:flutter/material.dart';

class MyTabController extends StatefulWidget {
  MyTabController({Key key}) : super(key: key);

  @override
  _MyTabControllerState createState() => _MyTabControllerState();
}

class _MyTabControllerState extends State<MyTabController> with SingleTickerProviderStateMixin{
  //使用TabController可以实现tab的左右滑动加载不同页面，下拉刷新，上拉加载更多
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    //初始化tabController
    _tabController=new TabController(vsync:this,length:4);

    _tabController.addListener((){
      print("_tabController.index: "+_tabController.index.toString());
    });

  }

  //声明周期函数，组件销毁时调用
  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text("tab controller page"),
        bottom:TabBar(
          controller: this._tabController,
          tabs: <Widget>[
          Tab(text:"tab1"),
          Tab(text:"tab2"),
          Tab(text:"tab3"),
          Tab(text:"tab4"),
        ],)
      ),
      body: new TabBarView(
        controller: this._tabController,
        children: <Widget>[
          Center(child: Text("boay1"),),
          Center(child: Text("boay2"),),
          Center(child: Text("boay3"),),
          Center(child: Text("boay4"),),
        ]
      ),
    );
  }
}
