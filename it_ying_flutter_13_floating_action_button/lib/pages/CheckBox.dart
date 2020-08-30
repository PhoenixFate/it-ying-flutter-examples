import 'package:flutter/material.dart';

class CheckBoxPage extends StatefulWidget {
  CheckBoxPage({Key key}) : super(key: key);

  @override
  _CheckBoxPageState createState() => _CheckBoxPageState();
}

class _CheckBoxPageState extends State<CheckBoxPage> {
  var _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("check box"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Checkbox(
                  value: this._isSelected,
                  onChanged: (value) {
                    setState(() {
                      this._isSelected = value;
                    });
                  },
                  activeColor: Colors.red,
                )
              ],
            ),
            Row(
              children: <Widget>[Text(this._isSelected ? "已选中" : "未选中")],
            ),
            SizedBox(
              height: 20,
            ),
            CheckboxListTile(
              value: this._isSelected,
              onChanged: (value) {
                setState(() {
                  this._isSelected = value;
                });
              },
              title: Text("CheckBoxListTile"),
              subtitle: Text("子标题"),
            ),
            Divider(),
            CheckboxListTile(
              value: this._isSelected,
              onChanged: (value) {
                setState(() {
                  this._isSelected = value;
                });
              },
              title: Text("带图标的CheckBoxListTile"),
              subtitle: Text("子标题"),
              secondary: Icon(Icons.home,color: Colors.red,),
              selected: this._isSelected,
            ),
          ],
        ),
      ),
    );
  }
}
