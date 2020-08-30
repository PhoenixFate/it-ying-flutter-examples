import 'package:flutter/material.dart';
import "res/PaddingComponent.dart";
import 'res/RowComponent.dart';
import 'res/ColumnComponent.dart';
import 'res/ExpandedComponent.dart';
import 'res/PracticeComponent.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("padding row column extend"),
      ),
      body: HomeContent(),
    ));
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        RaisedButton(
            color: Colors.blueGrey,
            child: Text(
              "padding 组件",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PaddingPage()));
            }),
        RaisedButton(
            color: Colors.blue,
            child: Text(
              "row 组件",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => RowPage()));
            }),
        RaisedButton(
          color: Colors.black,
          child: Text(
            "column 组件",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ColumnPage()));
          },
        ),
        RaisedButton(
          color: Colors.red,
          child: Text("expanded 组件"),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ExpandingPage()));
          },
        ),
        RaisedButton(
            color: Colors.blueGrey,
            child: Text("practice 练习"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PracticePage()));
            })
      ],
    );
  }
}
