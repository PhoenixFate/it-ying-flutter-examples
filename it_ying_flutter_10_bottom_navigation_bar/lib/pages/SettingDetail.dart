import 'package:flutter/material.dart';
import 'ToDo.dart';

class SettingDetail extends StatelessWidget {
  final ToDo toDo;
  const SettingDetail({Key key, @required this.toDo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.toDo.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Text(this.toDo.description),
      ),
    );
  }
}
