import 'package:flutter/material.dart';

//container 组件； 类似于div组件
class MineContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("container demo"),
        ),
        body: Container(
          width: 300,
          height: 500,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10.0),

          color: Colors.red,
          //Container组件类似于div组件
          child: Container(
            //container 里面的container 宽高无效
            height: 200.0,
            width: 100.0,
            child: Text(
              "hellosdfjjsdfkljsefwejriweojfiowejfisjlsdfjlsdjflsdfj",
              textAlign: TextAlign.center,
              //文本溢出显示...
              overflow: TextOverflow.ellipsis,
              //文本最大行数
              maxLines: 1,
              //字体放大倍数
              textScaleFactor: 2.2,

              style: TextStyle(
                  fontSize: 16.0,
                  //a rgb 颜色
                  color: Color.fromARGB(255, 255, 0, 0),
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.italic,
                  //字中间的线
                  decoration: TextDecoration.lineThrough,
                  decorationColor: Colors.black38,
                  //线的格式：dot，dash
                  decorationStyle: TextDecorationStyle.dotted,
                  //字间距
                  letterSpacing: 2.0),
            ),

            decoration: BoxDecoration(
                color: Colors.yellow,
                border: Border.all(color: Colors.blue, width: 2.0),
                //border-radius 圆角
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            //padding
            // padding: EdgeInsets.all(10.0),
            //left top right bottom
            // padding: EdgeInsets.fromLTRB(5, 20, 30, 50),
            // margin: EdgeInsets.fromLTRB(10, 20, 30, 40),

            //向着 x y z 位移
            // transform: Matrix4.translationValues(100, 0, 0),
            //旋转
            //正数是顺时针，负数是逆时针旋转
            // transform: Matrix4.rotationZ(0.3),
            // x,y,z 放大倍数
            // transform: Matrix4.diagonal3Values(1.2, 1, 1),
            alignment: Alignment.bottomLeft,
          ),
        ));
  }
}

