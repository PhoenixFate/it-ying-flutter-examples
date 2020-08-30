import 'package:flutter/material.dart';


class PaddingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("padding demo"),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 1.4,
          children: <Widget>[
            //image组件没有padding属性，添加padding组件
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network(
                  "https://www.itying.com/images/flutter/2.png",
                  fit: BoxFit.fill),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network(
                  "https://www.itying.com/images/flutter/2.png",
                  fit: BoxFit.fill),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network(
                  "https://www.itying.com/images/flutter/2.png",
                  fit: BoxFit.fill),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network(
                  "https://www.itying.com/images/flutter/2.png",
                  fit: BoxFit.fill),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network(
                  "https://www.itying.com/images/flutter/2.png",
                  fit: BoxFit.fill),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network(
                  "https://www.itying.com/images/flutter/2.png",
                  fit: BoxFit.fill),
            ),
          ],
        ),
      ),
    );
  }
}
