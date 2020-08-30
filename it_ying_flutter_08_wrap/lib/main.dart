import 'package:flutter/material.dart';

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
        primarySwatch: Colors.deepPurple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("wrap demo"),
        ),
        body: Container(
          height: 600,
          width: 400,
          color: Colors.red,
          padding: EdgeInsets.all(10),
          child: Wrap(
            //主轴方向，水平、垂直
            direction: Axis.horizontal,
            //主轴元素之间的间距
            spacing: 10,
            //交叉轴元素之间的间距
            runSpacing: 10,
            //主轴对齐方式
            // alignment: WrapAlignment.end,
            // alignment: WrapAlignment.spaceBetween,
            // alignment: WrapAlignment.spaceEvenly,
            alignment: WrapAlignment.spaceAround,

            //交叉轴对齐方式
            runAlignment: WrapAlignment.center,
            children: <Widget>[
              MyButton("第一集"),
              MyButton("第二集"),
              MyButton("第三集"),
              MyButton("第四集"),
              MyButton("第五集"),
              MyButton("第六集"),
              MyButton("第七集"),
              MyButton("第八集"),
              MyButton("第九wwwwwww集"),
              MyButton("第十集"),
              MyButton("第十一集"),
              MyButton("第十二集"),
              MyButton("第十三集"),
              MyButton("第十四集"),
              MyButton("第十五集"),
              MyButton("第十六集"),
            ],
          ),
        ));
  }
}

class MyButton extends StatelessWidget {
  final String text;
  MyButton(this.text, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(this.text),
      textColor: Theme.of(context).accentColor,
      color: Colors.yellow,
      onPressed: () {},
    );
  }
}
