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
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      verticalDirection: VerticalDirection.down,
      // textDirection:,
      textBaseline: TextBaseline.alphabetic,
      children: <Widget>[
        Container(
          child: Image.network(
            "http://k.sinaimg.cn/n/sports/crawl/340/w800h340/20200326/0d37-irkazzv3455586.jpg/w140h95z1l0t0q100c60.jpg",
            alignment: Alignment.topLeft,
            //充满整个容器，可能拉升，可能裁切，但不变形
            // fit:BoxFit.cover
            //铺满整个容器，但拉升
            // fit:BoxFit.fill
            // repeat: ImageRepeat.repeatX,
            //x y 都repeat
            repeat: ImageRepeat.repeat,
          ),
          color: Colors.red,
          height: 200,
          width: 200,
        ),
        Container(
          // color: Colors.blue,
          height: 200,
          width: 200,
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(100),
              image: DecorationImage(
                  image: NetworkImage(
                      "https://pics5.baidu.com/feed/b812c8fcc3cec3fdcd13bd632ab2bb39879427b3.jpeg?token=faf8e6da07c6fbe6b389902bcdc09e28"),
                  fit: BoxFit.cover)),
        ),
        Container(
          child: ClipOval(
            child: Image.network("https://tu.66vod.net/2020/0636.jpg",
            height: 100,
            width: 100,
            fit:BoxFit.cover),
          ),
          color: Colors.yellow,
        ),
        Container(
          child: Image.asset("images/a.jpg",fit:BoxFit.cover),
          width: 200,
          height: 200,
        ),
      ],
    );
  }
}
