import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      //交叉轴对齐方式
      crossAxisAlignment: CrossAxisAlignment.start,

      //主轴对齐方式
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          child: Text("RaisedButton 凸起的button 也就Meterial Design风格的button"),
        ),
        Row(
          children: <Widget>[
            RaisedButton(
              //背景颜色
              color: Colors.yellow,
              textColor: Colors.blue,
              child: Text("RaisedButton"),
              onPressed: () {},
            ),
            SizedBox(
              width: 20,
            ),
            RaisedButton(
              //背景颜色
              color: Colors.yellow,
              textColor: Colors.blue,
              //阴影大小
              elevation: 20,
              child: Text("elevation阴影"),
              onPressed: () {},
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              height: 60,
              width: 160,
              child: RaisedButton(
                child: Text("通过container给按钮设置宽高"),
                onPressed: () {},
              ),
            ),
            Container(child: Text("test"), color: Colors.red),
            //有图标的RaisedButton
            RaisedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.search),
                label: Text("有图标的RaisedButton"))
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(children: <Widget>[
          RaisedButton(
            child: Text("配置圆角按钮"),
            color: Colors.blue,
            textColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            onPressed: () {},
          ),
          Container(
            height: 80,
            width: 80,
            child: RaisedButton(
              child: Text("配置圆形按钮"),
              color: Colors.blue,
              textColor: Colors.white,
              //水波纹的颜色
              splashColor: Colors.red,
              //圆形按钮
              shape: CircleBorder(
                  //圆形按钮的边框
                  side: BorderSide(color: Colors.red)),
              onPressed: () {},
            ),
          )
        ]),
        Row(
          children: <Widget>[
            Expanded(
                child: Container(
              margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: RaisedButton(
                child: Text("自适应按钮"),
                onPressed: () {},
              ),
            ))
          ],
        ),
        Container(
          child: Text("FlatButton 扁平化的button"),
        ),
        Container(
          child: FlatButton(
            color: Colors.blue,
            child: Text("FlatButton"),
            onPressed: () {},
          ),
        ),
        Container(
          child: Text("OutlineButton 带边框的button"),
        ),
        Container(
          child: OutlineButton(
            //OutlineButton是没有背景颜色的
            //color设置无效
            color: Colors.yellow,
            child: Text("OutlineButton"),
            onPressed: () {},
          ),
        ),
        Container(
          child: Text("IconButton 图标按钮"),
        ),
        Container(
          child: IconButton(
            icon: Icon(Icons.home),
            onPressed: () {},
          ),
        ),
        Container(
          color:Colors.yellow,
          child: Text("ButtonBar 按钮组"),
        ),
        Container(
          color:Colors.purple,
          alignment: Alignment.center,
          child: ButtonBar(
            alignment: MainAxisAlignment.center,
            //通过ButtonBar 管理一组button
            children: <Widget>[
              RaisedButton(
                child: Text("登录"),
                onPressed: () {},
              ),
              RaisedButton(
                child: Text("注册"),
                onPressed: () {},
              ),
              // MyButton(
              //   text: Text("自定义按钮"),
              //   press: () {
              //     print("自定义按钮");
              //   },
              // )
            ],
          ),
        ),
        Container(
          child: Text("FloatingActionButton 浮动button"),
        ),
        // Container(
        //   child: FloatingActionButton(
        //     child: Text("FloatingActionButton"),
        //     onPressed: () {},
        //   ),
        // )
      ],
    );
  }
}

//自定义按钮
class MyButton extends StatelessWidget {
  final text;
  final Function press;
  final double height;
  final double width;
  const MyButton({
    Key key,
    this.text,
    this.press = null,
    this.height = 100,
    this.width = 100,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(this.text),
      onPressed: this.press,
    );
  }
}
