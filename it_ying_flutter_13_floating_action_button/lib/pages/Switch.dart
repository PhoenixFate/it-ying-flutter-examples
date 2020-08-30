import 'package:flutter/material.dart';

class SwitchPage extends StatefulWidget {
  SwitchPage({Key key}) : super(key: key);

  @override
  _SwitchPageState createState() => _SwitchPageState();
}

class _SwitchPageState extends State<SwitchPage> {
  var _isSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('switch component'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Switch(
                  value: this._isSelected,
                  onChanged: (value) {
                    this._isSelected = value;
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
