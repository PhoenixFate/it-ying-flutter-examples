import 'package:flutter/material.dart';
import 'routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // home: MyTabs(),
        //初始化加载的路由，也就是 home: MyTabs()
        initialRoute: "/",
        //路由规则的配置
        onGenerateRoute: onGenerateRoute,
    );
  }
}
