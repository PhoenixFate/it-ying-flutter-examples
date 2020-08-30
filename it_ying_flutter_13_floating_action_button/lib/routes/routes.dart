

import 'package:flutter/material.dart';
import '../pages/MyTabs.dart';
import '../pages/FloatingPage.dart';
import '../pages/TextField.dart';
import '../pages/TextFieldValue.dart';
import '../pages/CheckBox.dart';
import '../pages/Radio.dart';
import '../pages/FormDemo.dart';
import '../pages/Date.dart';
import '../pages/DateOthers.dart';
import '../pages/Swiper.dart';
import '../pages/Dialog.dart';


//配置路由
final routes = {
  "/": (context)=>MyTabs(),
  "/floatingPage":(context)=>FloatingPage(),
  "/textField":(context)=>TextFieldPage(),
  "/textFieldValue":(context)=>TextFiledGetValue(),
  "/checkbox":(context)=>CheckBoxPage(),
  "/radio":(context)=>RadioPage(),
  "/formDemo":(context)=>FormDemoPage(),
  "/date":(context)=>DatePage(),
  "/dateOthers":(context)=>DateOthers(),
  "/swiper":(context)=>SwiperPage(),
  "/dialog":(context)=>DialogPage(),
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
