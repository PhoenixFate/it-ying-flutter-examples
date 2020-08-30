import 'package:flutter/material.dart';
import 'package:it_ying_flutter_10_bottom_navigation_bar/pages/user/TempSecond.dart';
import 'package:it_ying_flutter_10_bottom_navigation_bar/pages/user/TempThird.dart';
import '../pages/Tabs.dart';
import '../pages/Form.dart';
import '../pages/Search.dart';
import '../pages/Product.dart';
import '../pages/ProductInfo.dart';
import '../pages/SettingDetail.dart';
import '../pages/user/Login.dart';
import '../pages/user/RegisterFirst.dart';
import '../pages/user/RegisterSecond.dart';
import '../pages/user/RegisterThird.dart';
import '../pages/user/TempFirst.dart';


//配置路由
final routes = {
  "/": (context)=>MyTabs(),
  "/form": (context) => FormPage(),
  "/search": (context, {arguments}) => SearchPage(
        arguments: arguments,
      ),
  "/product":(context)=>ProductPage(),
  "/productInfo":(context,{arguments})=>ProductInfo(arguments: arguments,),
  "/settingDetail":(context,{arguments})=>SettingDetail(toDo: arguments,),
  "/login":(context)=>LoginPage(),
  "/registerFirst":(context)=>RegisterFirstPage(),
  "/registerSecond":(context)=>RegisterSecondPage(),
  "/registerThird":(context)=>RegisterThirdPage(),

  "/tempFirst":(context)=>TempFirstPage(),
  "/tempSecond":(context)=>TempSecondPage(),
  "/tempThird":(context)=>TempThirdPage(),

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
