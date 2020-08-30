import 'package:flutter/material.dart';
import '../SettingDetail.dart';
import '../ToDo.dart';

class SettingsPage extends StatefulWidget {
  SettingsPage({Key key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  List<ToDo> _toDoList =
      List.generate(10, (i) => ToDo("这是第$i 条title", "这是第$i 条description"));

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: _toDoList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_toDoList[index].title),
            subtitle: Text(_toDoList[index].description),
            onTap: () {
              Navigator.pushNamed(context, "/settingDetail",arguments:this._toDoList[index]);

              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) =>
              //             SettingDetail(toDo: this._toDoList[index])));
            },
          );
        });
  }
}

