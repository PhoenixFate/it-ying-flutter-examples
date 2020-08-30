import 'package:flutter/material.dart';

class MinePage extends StatefulWidget {
  MinePage({Key key}) : super(key: key);

  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            child: Text("登录页面"),
            onPressed: (){
              Navigator.pushNamed(context, "/login");
            },
          ),
          SizedBox(height: 50,),
          RaisedButton(
            child: Text("注册页面"),
            onPressed: (){
              Navigator.pushNamed(context, "/registerFirst");
            },
          ),
          SizedBox(height: 50,),
          RaisedButton(
            child: Text("另一种实现返回根路径的方式"),
            onPressed: (){
              Navigator.pushNamed(context, "/tempFirst");
            },
          ),
        ],
      );
  }
}
