import 'package:flutter/material.dart';
import 'res/listData.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("grid layout test"),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  List<Widget> _getListData() {
    var tempList = listData.map((value) {
      return Container(
        //ListView里面的元素横向会平铺，但Column里面的元素不会平铺
        child: Column(
          children: <Widget>[
            Image.network(value["imageUrl"]),
            //SizedBox 用于调整两个组件之间的间距
            SizedBox(
              height: 10,
            ),
            Text(
              value["title"],
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
        decoration: BoxDecoration(
            border: Border.all(color: Color.fromRGBO(0, 0, 0, 100))),
      );
    });

    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> list = _getListData();
    list.add(Container(
        color: Colors.yellow,
        child: RaisedButton(
            color: Colors.blue,
            child: Text(
              "GridView.builder 创建grid 布局",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SecondPage()));
            })
          )
        );

    //通过GridView.count() 实现网格布局
    //网格布局中，高度无法直接设置，设置高度无效
    return GridView.count(
      //crossAxisCount 多少列
      crossAxisCount: 2,
      //两个块水平之间的距离
      crossAxisSpacing: 20.0,
      //两个块垂直间的距离
      mainAxisSpacing: 10.0,
      //子元素，宽高比例
      childAspectRatio: 0.95,
      children: list,
    );
  }
}

class SecondPage extends StatelessWidget {
  Widget _getDate(context,index){
    return Container(child: Column(
      children: <Widget>[
        Image.network(listData[index]["imageUrl"]),
        SizedBox(height: 12,),
        Text(
          listData[index]["title"],
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        )
      ],
    ),);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView.builder 创建grid 布局"),
      ),
      body:GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //水平widget 之间的距离
          crossAxisSpacing: 10,
          //垂直widget 之间的距离
          mainAxisSpacing: 10,
          //一行的widget数量
          crossAxisCount: 2
        ),
        itemCount: listData.length,
        itemBuilder: _getDate,
      )
    );
  }
}
