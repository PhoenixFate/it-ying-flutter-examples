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
        RaisedButton(child: Text("设备信息"),onPressed: (){
          Navigator.pushNamed(context, "/device");
        },),
   RaisedButton(child: Text("地理位置信息"),onPressed: (){
          Navigator.pushNamed(context, "/location");
        },),

        
       
      ],
    );
  }
}
