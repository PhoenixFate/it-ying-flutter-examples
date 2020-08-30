import 'package:flutter/material.dart';

class TextFieldPage extends StatelessWidget {
  const TextFieldPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("text field page"),
      ),
      body: ListView(
        children: <Widget>[
          TextField(),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(hintText: "带提示符的输入框"),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
                hintText: "带边框的输入框", border: OutlineInputBorder()),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            maxLines: 4,
            decoration: InputDecoration(
                hintText: "多行输入框", border: OutlineInputBorder()),
          ),
          SizedBox(height: 20,),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "密码框",
              border: OutlineInputBorder()
            ),
          ),
          SizedBox(height: 20,),
          TextField(
            decoration: InputDecoration(
              border:OutlineInputBorder(),
              labelText: "labelText 用户名"
            ),
          ),
          SizedBox(height: 20,),
          TextField(
            decoration: InputDecoration(
              icon:Icon(Icons.people),
              hintText:"带图标的输入框"
            ),
          )
        ],
      ),
    );
  }
}
