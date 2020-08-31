import 'package:flutter/material.dart';
import '../pages/MyTabs.dart';
import '../pages/CameraPage.dart';
import '../pages/CameraExample.dart';

//配置路由
final routes = {
  "/": (context) => MyTabs(),
  "/camera": (context) => CameraPage(),
  "/cameraExample": (context) => CameraExample(),
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
