import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 8,
        child: Scaffold(
          appBar: AppBar(
              //导航条的颜色
              backgroundColor: Colors.black,
              title: Row(
                children: <Widget>[
                  Expanded(
                    child: TabBar(
                      //指示器的颜色，也就是字下面线的颜色
                      indicatorColor: Colors.red,
                      //指示器的长度  TabBarIndicatorSize.label: 和文字等宽；TabBarIndicatorSize.tab: tab的长度
                      indicatorSize: TabBarIndicatorSize.tab,
                      //tabBar字的颜色
                      labelColor: Colors.yellow,
                      //未选中的颜色
                      unselectedLabelColor: Colors.white,

                      //多个tab是否可以滑动
                      isScrollable: true,
                      tabs: <Widget>[
                        Tab(
                          text: "热门",
                        ),
                        Tab(text: "推荐"),
                        Tab(
                          text: "热门",
                        ),
                        Tab(text: "推荐"),
                        Tab(
                          text: "热门",
                        ),
                        Tab(text: "推荐"),
                        Tab(
                          text: "热门",
                        ),
                        Tab(text: "推荐"),
                      ],
                    ),
                  )
                ],
              )),
          body: TabBarView(
            children: <Widget>[
              ListView(
                children: <Widget>[
                  ListTile(
                    title: Text("热门第一个tab"),
                  ),
                  ListTile(
                    title: Text("热门第二个tab"),
                  ),
                  ListTile(
                    title: Text("热门第三个tab"),
                  ),
                  ListTile(
                    title: Text("热门第四个tab"),
                  )
                ],
              ),
              ListView(
                children: <Widget>[
                  ListTile(
                    title: Text("推荐第一个tab"),
                  ),
                  ListTile(
                    title: Text("推荐第二个tab"),
                  ),
                  ListTile(
                    title: Text("推荐第三个tab"),
                  ),
                  ListTile(
                    title: Text("推荐第四个tab"),
                  )
                ],
              ),
              ListView(
                children: <Widget>[
                  ListTile(
                    title: Text("热门第一个tab3"),
                  ),
                  ListTile(
                    title: Text("热门第二个tab3"),
                  ),
                  ListTile(
                    title: Text("热门第三个tab3"),
                  ),
                  ListTile(
                    title: Text("热门第四个tab3"),
                  )
                ],
              ),
              ListView(
                children: <Widget>[
                  ListTile(
                    title: Text("推荐第一个tab4"),
                  ),
                  ListTile(
                    title: Text("推荐第二个tab4"),
                  ),
                  ListTile(
                    title: Text("推荐第三个tab4"),
                  ),
                  ListTile(
                    title: Text("推荐第四个tab4"),
                  )
                ],
              ),
              ListView(
                children: <Widget>[
                  ListTile(
                    title: Text("热门第一个tab"),
                  ),
                  ListTile(
                    title: Text("热门第二个tab"),
                  ),
                  ListTile(
                    title: Text("热门第三个tab"),
                  ),
                  ListTile(
                    title: Text("热门第四个tab"),
                  )
                ],
              ),
              ListView(
                children: <Widget>[
                  ListTile(
                    title: Text("推荐第一个tab"),
                  ),
                  ListTile(
                    title: Text("推荐第二个tab"),
                  ),
                  ListTile(
                    title: Text("推荐第三个tab"),
                  ),
                  ListTile(
                    title: Text("推荐第四个tab"),
                  )
                ],
              ),
              ListView(
                children: <Widget>[
                  ListTile(
                    title: Text("热门第一个tab3"),
                  ),
                  ListTile(
                    title: Text("热门第二个tab3"),
                  ),
                  ListTile(
                    title: Text("热门第三个tab3"),
                  ),
                  ListTile(
                    title: Text("热门第四个tab3"),
                  )
                ],
              ),
              ListView(
                children: <Widget>[
                  ListTile(
                    title: Text("推荐第一个tab4"),
                  ),
                  ListTile(
                    title: Text("推荐第二个tab4"),
                  ),
                  ListTile(
                    title: Text("推荐第三个tab4"),
                  ),
                  ListTile(
                    title: Text("推荐第四个tab4"),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
