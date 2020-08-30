import 'package:flutter/material.dart';

class TextFiledGetValue extends StatefulWidget {
  TextFiledGetValue({Key key}) : super(key: key);

  @override
  _TextFiledGetValueState createState() => _TextFiledGetValueState();
}

class _TextFiledGetValueState extends State<TextFiledGetValue> {
  var _username =
      new TextEditingController(); //如果需要初始化数据，需要new TextEditingController(), 否则不需要
  var _password;

  @override
  void initState() {
    super.initState();
    _username.text = "初始值";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("从表单中获取数据"),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              TextField(
                controller: _username,
                decoration: InputDecoration(hintText: "请输入用户名"),
                onChanged: (value) {
                  setState(() {
                    this._username.text = value;
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: RaisedButton(
                  child: Text("获得输入框的值"),
                  onPressed: () {
                    print(this._username.text);
                  },
                ),
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(hintText: "请输入密码"),
                onChanged: (value) {
                  setState(() {
                    this._password = value;
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: RaisedButton(
                  child: Text("获得输入框的值"),
                  onPressed: () {
                    print(this._username.text);
                    print(this._password);
                  },
                ),
              )
            ],
          ),
        ));
  }
}
