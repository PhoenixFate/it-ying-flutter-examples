import 'package:flutter/material.dart';

class PublishPage extends StatefulWidget {
  PublishPage({Key key}) : super(key: key);

  @override
  _PublishPageState createState() => _PublishPageState();
}

class _PublishPageState extends State<PublishPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      //交叉轴对齐方式
      crossAxisAlignment: CrossAxisAlignment.start,

      //主轴对齐方式
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text("publish page"),
          onPressed: () {
            
          },
        )
      ],
    );
  }
}
