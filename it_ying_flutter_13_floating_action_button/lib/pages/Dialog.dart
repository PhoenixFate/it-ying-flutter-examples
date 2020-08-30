import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../components/MyDialog.dart';


class DialogPage extends StatefulWidget {
  DialogPage({Key key}) : super(key: key);

  @override
  _DialogPageState createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  _alertDialog() async {
    var result = await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("提示信息"),
            content: Text(""),
            actions: <Widget>[
              FlatButton(
                child: Text("取消"),
                onPressed: () {
                  print("alert dialog 取消");
                  //隐藏该dialog
                  Navigator.pop(context, "cancel");
                },
              ),
              FlatButton(
                child: Text("确定"),
                onPressed: () {
                  print("alert dialog 确定");
                  //隐藏该dialog
                  Navigator.pop(context, "sure");
                },
              )
            ],
          );
        });
    print("result: " + result.toString());
  }

  _simpleDialog() async {
    var result = await showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: Text("simple dialog 选择对应内容"),
            children: <Widget>[
              SimpleDialogOption(
                child: Text("option a"),
                onPressed: () {
                  print("select option a");
                  Navigator.pop(context, "a");
                },
              ),
              Divider(),
              SimpleDialogOption(
                child: Text("option b"),
                onPressed: () {
                  print("select option b");
                  Navigator.pop(context, "b");
                },
              ),
              Divider(),
              SimpleDialogOption(
                child: Text("option c"),
                onPressed: () {
                  print("select option c");
                  Navigator.pop(context, "c");
                },
              )
            ],
          );
        });
    print("simple dialog result: " + result.toString());
  }

  _modelBottomSheet() async {
    var result = await showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 300,
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text("分享A"),
                  onTap: () {
                    Navigator.pop(context, "分享A");
                  },
                ),
                ListTile(
                  title: Text("分享B"),
                  onTap: () {
                    Navigator.pop(context, "分享B");
                  },
                ),
                ListTile(
                  title: Text("分享C"),
                  onTap: () {
                    Navigator.pop(context, "分享C");
                  },
                )
              ],
            ),
          );
        });
    print("model bottom sheet result: " + result.toString());
  }

  _toast() {
    Fluttertoast.showToast(
        msg: "This is Colored Toast with android duration of 5 Sec",
        toastLength: Toast.LENGTH_SHORT,
        webBgColor: "#e74c3c",
        timeInSecForIosWeb: 5,
        );

  }

  _myDialog(){
    showDialog(context: context,
      builder: (context){
        return MyDialog(title:"fbi warning",content:"社论认为九二是快乐的放假啦空手道解放离开角色付款就");
      }
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("dialog page"),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text("alert dialog"),
            onPressed: _alertDialog,
          ),
          RaisedButton(
            child: Text("simple dialog"),
            onPressed: _simpleDialog,
          ),
          RaisedButton(
            child: Text("modelBottomSheet"),
            onPressed: _modelBottomSheet,
          ),
          RaisedButton(
            child: Text("toast"),
            onPressed: _toast,
          ),
          RaisedButton(
            child: Text("自定义dialog"),
            onPressed: _myDialog,)
        ],
      ),
    );
  }
}
