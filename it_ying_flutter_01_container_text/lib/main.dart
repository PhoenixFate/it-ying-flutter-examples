import 'package:flutter/material.dart';
import 'res/TextPage.dart';
import 'res/ContainerPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("flutter demo"),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Text("text component"),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MineTextPage()));
          },
        ),
        RaisedButton(
          child: Text("container component"),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MineContainerPage()));
          },
        )
      ],
    );
  }
}
