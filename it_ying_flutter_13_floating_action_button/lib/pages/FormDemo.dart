import 'package:flutter/material.dart';

class FormDemoPage extends StatefulWidget {
  FormDemoPage({Key key}) : super(key: key);

  @override
  _FormDemoPageState createState() => _FormDemoPageState();
}

class _FormDemoPageState extends State<FormDemoPage> {
  var _sex = 1;
  var _username;

  List _hobbies = [
    {"checked": true, "title": "吃饭"},
    {"checked": false, "title": "睡觉"},
    {"checked": false, "title": "打游戏"},
  ];

  List<Widget> _getHobbies() {
    List<Widget> tempList = [];
    for (var i = 0; i < this._hobbies.length; i++) {
      tempList.add(Text(this._hobbies[i]["title"]));
      tempList.add(Checkbox(
        value: this._hobbies[i]["checked"],
        onChanged: (value) {
          setState(() {
            this._hobbies[i]["checked"] = value;
          });
        },
      ));
    }
    return tempList;
  }

  void changeSex(value) {
    setState(() {
      this._sex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("form demo")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(hintText: "请输入用户名"),
              onChanged: (value) {
                setState(() {
                  this._username = value;
                });
              },
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Text("男"),
                Radio(
                    value: 1, groupValue: this._sex, onChanged: this.changeSex),
                Text("女"),
                Radio(
                  value: 2,
                  groupValue: this._sex,
                  onChanged: this.changeSex,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: _getHobbies(),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              maxLines: 4,
              decoration: InputDecoration(hintText: "备注信息",border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                    child: Text("提交"),
                    onPressed: () {
                      print("username: " + this._username);
                      print("sex: " + this._sex.toString());
                      print(this._hobbies);
                    },
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
