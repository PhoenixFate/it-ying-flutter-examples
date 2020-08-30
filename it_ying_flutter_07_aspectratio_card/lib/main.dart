import 'package:flutter/material.dart';
import 'res/AspectPage.dart';
import 'res/CardPage.dart';
import 'res/ImageCardPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 30.0, //设置appBar的垂直阴影 不需要的话值设置成 0.0
          title: Text("aspectRatio card demo"),
        ),
        body: HomeContent(),
      ),
      theme: ThemeData(
          //设置主题颜色
          primarySwatch: Colors.yellow),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Text("aspect ratio demo"),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => AspectPage()));
          },
        ),
        RaisedButton(
          child: Text("card demo"),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => CardPage()));
          },
        ),
        RaisedButton(
          child: Text("iamge card"),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ImageCardPage();
            }));
          },
        )
      ],
    );
  }
}
