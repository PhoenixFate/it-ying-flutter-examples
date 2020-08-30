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
          title: Text("list view demo"),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[
        ListTile(
          title: Text(
            "这也太帅了吧！戈登一张照片让女粉们彻底疯狂",
            style: TextStyle(fontSize: 18),
          ),
          subtitle: Text(
              "　北京时间3月31日，魔术前锋阿隆-戈登晒出在家看书的照片，颜值和身材让人羡慕不已。这张照片发出3个小时便收获了5textScaleFactor: .5万赞，很多女球迷都在下面评论了流口水的表情 "),
        ),
        ListTile(
          title: Text(
            "阿联震惊了！布兰登怀特这一扣还有人记得吗？",
            style: TextStyle(fontSize: 18),
          ),
          subtitle: Text(
              "　来自2011-12赛季独行侠对开拓者的比赛！独行侠小将布兰登怀特的十佳球一扣！这一球有点杰拉德格林空接的感觉！不过杰拉德格林是超框，怀特是平框！亮点来了，这一球之后的独行侠替补席！"),
        ),
        ListTile(
          title: Text(
            "NBA计划组织球员进行2k游戏锦标赛 将电视直播",
            style: TextStyle(fontSize: 18),
          ),
          subtitle: Text("北京时间3月31日，据雅虎体育报道，NBA正在计划组织一个只有NBA球员参加的2K游戏锦标赛。" +
              "由于新冠疫情升级，NBA已经停赛数周时间，而且预计还将停赛很长一段时间。" +
              "今天，雅虎体育记者克里斯-海恩斯报道称，NBA正在计划组织一个只有NBA球员参加的2K游戏锦标赛。这个锦标赛将邀请NBA球员里最顶尖的游戏玩家参加，并且将通过ESPN直播。" +
              "据悉，NBA希望在本周六上线这个2K锦标赛，而且将会有一些大牌NBA球员参加。" +
              "由于NBA处于无限期停赛，而且美国总统特朗普已经把保持社交距离的时间推到至少4月30日，因此NBA不得不评估把球迷们带回来的最安全方式。" +
              "关于这个2K锦标赛，参赛的NBA球员可以在自己的家里操作，同时也能为想念比赛的球迷们带来一些快乐。" +
              "事实上，NBA停赛期间，许多NBA球员一天的主要工作就是约上好友打游戏。" +
              "消息人士称，联盟目前仍在努力敲定一些锦标赛的细节内容。"),
        ),
        ListTile(
          leading: Icon(
            Icons.add_to_home_screen,
            color: Colors.yellow,
            size: 30,
          ),
          title: Text(
            "阿联震惊了！布兰登怀特这一扣还有人记得吗？",
            style: TextStyle(fontSize: 18),
          ),
          subtitle: Text(
              "　来自2011-12赛季独行侠对开拓者的比赛！独行侠小将布兰登怀特的十佳球一扣！这一球有点杰拉德格林空接的感觉！不过杰拉德格林是超框，怀特是平框！亮点来了，这一球之后的独行侠替补席！"),
        ),
        ListTile(
          title: Text(
            "阿联震惊了！布兰登怀特这一扣还有人记得吗？",
            style: TextStyle(fontSize: 18),
          ),
          subtitle: Text(
              "　来自2011-12赛季独行侠对开拓者的比赛！独行侠小将布兰登怀特的十佳球一扣！这一球有点杰拉德格林空接的感觉！不过杰拉德格林是超框，怀特是平框！亮点来了，这一球之后的独行侠替补席！"),
          trailing: Icon(
            Icons.brightness_3,
            size: 50,
            color: Colors.red,
          ),
        ),
        ListTile(
          leading: Image.network(
              "http://k.sinaimg.cn/n/sports/transform/283/w650h433/20200324/7e3b-ireifzi3104124.jpg/w140h95z1l0t0q1004db.jpg",
              width: 100,
              height: 150,
              fit: BoxFit.fill),
          title: Text(
            "阿联震惊了！布兰登怀特这一扣还有人记得吗？",
            style: TextStyle(fontSize: 18),
          ),
          subtitle: Text(
              "　来自2011-12赛季独行侠对开拓者的比赛！独行侠小将布兰登怀特的十佳球一扣！这一球有点杰拉德格林空接的感觉！不过杰拉德格林是超框，怀特是平框！亮点来了，这一球之后的独行侠替补席！"),
        ),
        Image.network(
          "http://k.sinaimg.cn/n/sports/transform/283/w650h433/20200324/7e3b-ireifzi3104124.jpg/w140h95z1l0t0q1004db.jpg",
          fit: BoxFit.fill,
        ),
        Image.network(
          "http://k.sinaimg.cn/n/sports/transform/283/w650h433/20200324/7e3b-ireifzi3104124.jpg/w140h95z1l0t0q1004db.jpg",
          fit: BoxFit.fill,
        ),
        Image.network(
          "http://k.sinaimg.cn/n/sports/transform/283/w650h433/20200324/7e3b-ireifzi3104124.jpg/w140h95z1l0t0q1004db.jpg",
          fit: BoxFit.fill,
        ),
        Image.network(
          "http://k.sinaimg.cn/n/sports/transform/283/w650h433/20200324/7e3b-ireifzi3104124.jpg/w140h95z1l0t0q1004db.jpg",
          fit: BoxFit.fill,
        ),
        Container(
          height: 60,
          child: RaisedButton(
            child: Text(
              '跳转到水平ListView)',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.blueAccent,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HorizontalListView()));
            },
          ),
        ),
        Container(
          height: 60,
          child: RaisedButton(
            child: Text(
              '跳转到动态ListView(动态加载数据)',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.blueAccent,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DynamicListView()));
            },
          ),
        ),
        Container(
          height: 60,
          child: RaisedButton(
            child: Text(
              'ListViewer.builder 创建数据',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.blueAccent,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ListViewerBuilder()));
            },
          ),
        )
      ],
      //设置是垂直列表还是水平列表
      //Axis.horizontal 水平列表
      //Axis.vertical 垂直列表
      scrollDirection: Axis.vertical,
    );
  }
}

class HorizontalListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('页面二'),
          backgroundColor: Colors.purple,
          centerTitle: true,
        ),
        body: Container(
          height: 200,
          child: ListView(
            //水平list
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                color: Colors.yellow,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: ListView(children: <Widget>[
                  Image.network(
                    "http://k.sinaimg.cn/n/sports/transform/283/w650h433/20200324/7e3b-ireifzi3104124.jpg/w140h95z1l0t0q1004db.jpg",
                    fit: BoxFit.fill,
                  ),
                  Text("我是第一中锋")
                ]),
              ),
              Container(width: 100, height: 100, color: Colors.green),
              Container(width: 100, height: 100, color: Colors.purple),
              Container(width: 100, height: 100, color: Colors.blue)
            ],
          ),
        ));
  }
}

class DynamicListView extends StatelessWidget {
  //自定义方法
  List<Widget> _getData() {
    //动态加载数据，
    //动态创建返回的ListTile 数组
    var tempList = listData.map((value) {
      return ListTile(
        leading: Image.network(value["imageUrl"]),
        title: Text(value["title"]),
        subtitle: Text(value["author"]),
      );
    });
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("动态列表"),
        backgroundColor: Colors.yellow,
        centerTitle: true,
      ),
      body: Container(
        child: ListView(
          children: this._getData(),
        ),
      ),
    );
  }
}

class ListViewerBuilder extends StatelessWidget {
  List _list = new List();

  //构造的时候初始化参数
  ListViewerBuilder() {
    var tempList = listData.map((value) {
      return ListTile(
        leading: Image.network(value["imageUrl"]),
        title: Text(value["title"]),
        subtitle: Text(value["author"]),
      );
    });
    this._list = tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView.builder"),
        backgroundColor: Colors.yellow,
        centerTitle: true,
      ),
      body: Container(
          child: ListView.builder(
              itemCount: this._list.length,
              itemBuilder: (context, index) {
                return this._list[index];
              })),
    );
  }

}
