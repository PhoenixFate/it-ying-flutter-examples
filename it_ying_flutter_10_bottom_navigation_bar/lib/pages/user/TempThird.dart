import 'package:flutter/material.dart';
import '../Tabs.dart';

class TempThirdPage extends StatelessWidget {
  const TempThirdPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("第三步-完成注册")
      ),body:Column(
        children: <Widget>[
          SizedBox(height: 40),
          Text("输入密码完成注册"),
          SizedBox(height: 40),
          RaisedButton(
            child: Text('确定'),
            onPressed: (){
              //注册完成，返回根页面
              Navigator.pushAndRemoveUntil(context, new MaterialPageRoute(builder: (context)=>MyTabs(index:3)), (route)=>route==null);


            },
          )
        ],
      )
    );
  }
}