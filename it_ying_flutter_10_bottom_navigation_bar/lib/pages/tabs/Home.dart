import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      //交叉轴对齐方式
      crossAxisAlignment: CrossAxisAlignment.start,

      //主轴对齐方式
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
          child: Text("跳转到search页面"),
          onPressed: () {
            //命名路由跳转
            Navigator.pushNamed(context, "/search",arguments: {"id":888});
          },
        ),
        SizedBox(height: 20,),
        RaisedButton(
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
          child: Text("跳转到product页面"),
          onPressed: () {
            //命名路由跳转
            Navigator.pushNamed(context, "/product");
          },
        )
      ],
    );
  }
}
