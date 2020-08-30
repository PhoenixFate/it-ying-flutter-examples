import 'package:flutter/material.dart';
import '../pages/MyTabs.dart';
import '../pages/MyAppBar.dart';
import "../pages/MyTabBar.dart";
import '../pages/MyTabController.dart';


//配置路由
final routes = {
  "/": (context)=>MyTabs(),
  "/appBar": (context)=>MyAppBar(),
  "/tabBar":(context)=>MyTabBar(),
  "/tabController":(context)=>MyTabController(),
};

//固定写法
Function onGenerateRoute = (RouteSettings settings) {
  // 统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      print(settings.arguments);

      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
  return null;
};
