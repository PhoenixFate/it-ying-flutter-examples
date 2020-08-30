import 'package:flutter/material.dart';
import 'IconContainerComponent.dart';


class ExpandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("expanded 组件")),
        body: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  color:Colors.red,
                  child: Text("如果都是flex，表示占用几分之几",style:TextStyle(color: Colors.white),),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: IconContainer(Icons.pages, color: Colors.yellow),
                ),
                Expanded(
                  flex: 2,
                  child: IconContainer(Icons.home, color: Colors.blueAccent),
                )
              ],
            ),

            Row(
              children: <Widget>[
                // Expanded 组件，就是width：100%
                // Expanded(child:Container(
                //   color: Colors.lightGreen,
                //   child: Text("如果左侧是正常的宽度，最右边一个是flex:1 表示取剩余宽度"),
                // ),),
                Container(
                  color: Colors.lightGreen,
                  child: Text("如果左侧是正常的宽度，最右边一个是flex:1 表示取剩余宽度"),
                ),
              ],
            ),


            Row(
              children: <Widget>[
                IconContainer(Icons.pages, color: Colors.yellow),
                Expanded(
                  flex: 2,
                  child: IconContainer(Icons.home, color: Colors.blueAccent),
                )
              ],
            ),


          ],
        ));
  }
}
