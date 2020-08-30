
import 'package:flutter/material.dart';
import '../pages/MyTabs.dart';
import '../pages/JsonAndMap.dart';
import '../pages/HttpRequest.dart';
import '../pages/HttpDemo.dart';
import '../pages/DioRequest.dart';
import '../pages/DioDemo.dart';
import '../pages/RefreshIndicator.dart';

//配置路由
final routes = {
  "/": (context)=>MyTabs(),
  "/jsonAndMap":(context)=>JsonAndMapPage(),
  "/http":(context)=>HttpPage(),
  "/httpDemo":(context)=>HttpDemoPage(),
  "/dio":(context)=>DioRequestPage(),
  "/dioDemo":(context)=>DioDemo(),
  "/refresh":(context)=>RefreshIndicatorPage(),
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
