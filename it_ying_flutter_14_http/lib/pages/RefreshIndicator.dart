import 'dart:math';

import 'package:flutter/material.dart';

import 'dart:convert' as convert;
import 'package:dio/dio.dart' as dio;

// 下拉刷新
// 上拉加载更多

class RefreshIndicatorPage extends StatefulWidget {
  RefreshIndicatorPage({Key key}) : super(key: key);

  @override
  _RefreshIndicatorPageState createState() => _RefreshIndicatorPageState();
}

class _RefreshIndicatorPageState extends State<RefreshIndicatorPage> {
  List _newsList = [];
  int _page = 1;
  bool hasMore = true;

  ScrollController _scrollController = new ScrollController();

  @override
  void initState() {
    super.initState();
    this._getData();

    //监听滚动条事件
    _scrollController.addListener(() {
      //获取滚动条下拉的距离
      print("滚动条下拉的距离:" + this._scrollController.position.pixels.toString());

      //获取整个页面的高度
      print("整个页面的高度:" +
          this._scrollController.position.maxScrollExtent.toString());

      if (this._scrollController.position.pixels >
          (this._scrollController.position.maxScrollExtent - 40)) {
        _getData();
      }
    });
  }

  _getData() async {
    if (this.hasMore) {
      var apiUrl =
          "http://www.phonegap100.com/appapi.php?a=getPortalList&catid=20&page=$_page";
      dio.Response result = await dio.Dio().get(apiUrl);
      setState(() {
        List tempList = convert.json.decode(result.data)["result"];
        for (var i = 0; i < tempList.length; i++) {
          tempList[i]["title"] =
              Random().nextInt(100).toString() + tempList[i]["title"];
        }
        // 判断是否是最后一页
        if (tempList.length < 20) {
          this.hasMore = false;
        }
        this._newsList.addAll(tempList);

        this._page++;
      });
    }
  }

  Future<void> _onRefresh() async {
    print("下拉刷新");
    await Future.delayed(Duration(milliseconds: 100), () {
      print("请求数据完成");
      this._newsList = [];
      this._page = 1;
      this.hasMore = true;
      _getData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("下拉刷新；上拉加载更多"),
        ),
        body: this._newsList.length > 0
            ? RefreshIndicator(
                onRefresh: _onRefresh,
                child: ListView.builder(
                    //绑定controller，监听下拉到最底部
                    controller: _scrollController,
                    itemCount: this._newsList.length,
                    itemBuilder: (context, index) {
                      if (index == this._newsList.length - 1) {
                        //列表渲染到最后一条的时候加一个圈圈
                        //拉到底
                        return Column(
                          children: <Widget>[
                            ListTile(
                              title: Text("${this._newsList[index]["title"]}",
                                  maxLines: 1),
                            ),
                            Divider(),
                            _getMoreWidget()
                          ],
                        );
                      } else {
                        return Column(
                          children: <Widget>[
                            ListTile(
                              title: Text("${this._newsList[index]["title"]}",
                                  maxLines: 1),
                            ),
                            Divider()
                          ],
                        );
                      }
                    }),
              )
            : _getMoreWidget());
  }

  //加载中的圈圈
  Widget _getMoreWidget() {
    if (hasMore) {
      return Center(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                '加载中...',
                style: TextStyle(fontSize: 16.0),
              ),
              CircularProgressIndicator(
                strokeWidth: 1.0,
              )
            ],
          ),
        ),
      );
    } else {
      return Center(
        child: Text("--没有更多数据了--"),
      );
    }
  }
}
