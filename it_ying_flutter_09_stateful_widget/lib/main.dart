import 'package:flutter/material.dart';
import 'res/ListPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("statefulWidget demo"),
        ),
        body: HomePageFul(),
      ),
    );
  }
}

//继承StatelessWidget的组件，修改内部数据无法同步到页面
class HomePageLess extends StatelessWidget {
  int countNumber = 0;
  // const HomePage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 200,
        ),
        Text("${this.countNumber}"),
        SizedBox(
          height: 20,
        ),
        RaisedButton(
          child: Text("按钮"),
          onPressed: () {
            //页面上的数据不会变
            this.countNumber++;
            print(this.countNumber);
          },
        )
      ],
    );
  }
}

class HomePageFul extends StatefulWidget {
  HomePageFul({Key key}) : super(key: key);

  @override
  _HomePageFulState createState() => _HomePageFulState();
}

class _HomePageFulState extends State<HomePageFul> {
  int countNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 200,
        ),
        Chip(
          label: Text("${this.countNumber}"),
        ),
        RaisedButton(
          child: Text("button"),
          onPressed: () {
            setState(() {
              this.countNumber++;
            });
          },
        ),
        RaisedButton(
          child: Text("add list"),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ListPage()));
          },
        )
      ],
    );
  }
}
