import 'package:flutter/material.dart';
import '../Form.dart';


class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,

      children: <Widget>[
        RaisedButton(
          color: Colors.purple,
          textColor: Colors.yellow,
          child: Text("跳转到form页面，并且传值"),
            onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=>FormPage(title: "传入的表单页面",))
              );
            },
          )
    ],);
  }
}