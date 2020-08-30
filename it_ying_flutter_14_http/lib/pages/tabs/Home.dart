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
      crossAxisAlignment: CrossAxisAlignment.center,

      //主轴对齐方式
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: <Widget>[
        RaisedButton(child: Text("json <==> map"),onPressed: (){
          Navigator.pushNamed(context, "/jsonAndMap");
        },),
        RaisedButton(child: Text("http get post"),onPressed: (){
          Navigator.pushNamed(context, "/http");
        },),
        RaisedButton(child: Text("http demo"), onPressed: (){
          Navigator.pushNamed(context, "/httpDemo");
        },),
        RaisedButton(child: Text("dio get post"), onPressed: (){
          Navigator.pushNamed(context, "/dio");
        },),
         RaisedButton(child: Text("dio demo"), onPressed: (){
          Navigator.pushNamed(context, "/dioDemo");
        },),
           RaisedButton(child: Text("上拉加载更多，下拉刷新"), onPressed: (){
          Navigator.pushNamed(context, "/refresh");
        },)
       
       
        
       
      ],
    );
  }
}
