import 'package:flutter/material.dart';


class FormPage extends StatelessWidget {

  final String title;

  const FormPage({Key key,this.title="表单页面"}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Text("返回"),
          onPressed: () {
            //返回上一级页面
            Navigator.pop(context);
          },
        ),
        appBar: AppBar(
          title: Text(this.title),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              title: Text("我是表单页面"),
            ),
            ListTile(
              title: Text("我是表单页面"),
            ),
            ListTile(
              title: Text("我是表单页面"),
            ),
            ListTile(
              title: Text("我是表单页面"),
            ),
            ListTile(
              title: Text("我是表单页面"),
            ),
          ],
        ),
      ),
    );
  }
}
