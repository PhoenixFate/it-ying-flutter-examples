import 'package:flutter/material.dart';


class AspectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("aspect demo"),
      ),
      body: Container(
        width: 300,
        color: Colors.yellow,
        child: AspectRatio(
          child: Container(
            color: Colors.red,
          ),
          //宽度/高度
          aspectRatio: 2.0 / 1.0,
        ),
      ),
    );
  }
}
