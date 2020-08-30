import 'dart:async';

import 'package:flutter/material.dart';

class MyDialog extends Dialog {

  String title;
  String content;

  MyDialog( {this.title="",this.content=""});


  _showTimer(context){
    var timer;
    timer=Timer.periodic(Duration(milliseconds: 3000), (t){
      Navigator.pop(context);
      //t.cancel()取消定时器
      t.cancel();
    });

  }


  @override
  Widget build(BuildContext context) {
    return Material(
      //透明效果
      type: MaterialType.transparency,
      child: Center(
          child: Container(
        height: 200,
        width: 300,
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topCenter,
                    child: Text(this.title),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: InkWell(
                      child: Icon(Icons.close),
                      onTap: (){
                        //点击关闭 对话框
                        Navigator.pop(context);
                        //也可以在n秒之后自动关闭对话框

                      },
                    ),
                  )
                ],
              ),
            ),
            Divider(),
            Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              child: Text(
                this.content,
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
