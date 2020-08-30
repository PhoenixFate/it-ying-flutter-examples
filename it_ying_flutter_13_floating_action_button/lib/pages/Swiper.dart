import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperPage extends StatefulWidget {
  SwiperPage({Key key}) : super(key: key);

  @override
  _SwiperPageState createState() => _SwiperPageState();
}

class _SwiperPageState extends State<SwiperPage> {
  List _imageList = [
    {"url": "https://www.itying.com/images/flutter/1.png"},
    {"url": "https://www.itying.com/images/flutter/2.png"},
    {"url": "https://www.itying.com/images/flutter/3.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("轮播图 页面"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
    
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.red,
              child: AspectRatio(aspectRatio: 16/9,child: new Swiper(
                //自动轮播
                autoplay: true,
                //循环播放
                loop: true,
                itemBuilder: (BuildContext context, int index) {
                  return new Image.network(
                    _imageList[index]["url"],
                    fit: BoxFit.fill,
                  );
                },
                itemCount: _imageList.length,
                pagination: new SwiperPagination(),
                //轮播图的左右箭头：
                control: new SwiperControl(),
              ),)
            ),
          ],
        ),
      ),
    );
  }
}
