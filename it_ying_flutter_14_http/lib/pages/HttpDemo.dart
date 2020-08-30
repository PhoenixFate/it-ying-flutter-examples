import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class HttpDemoPage extends StatefulWidget {
  HttpDemoPage({Key key}) : super(key: key);

  @override
  _HttpDemoPageState createState() => _HttpDemoPageState();
}

class _HttpDemoPageState extends State<HttpDemoPage> {

  List _productList=new List();


  @override
  void initState() {
    super.initState();


    _getData();


  }


  _getData() async{
    var apiUrl="http://a.itying.com/api/productList";
    var result=await http.get(apiUrl);
    if(result.statusCode==200){
      setState(() {
        this._productList=(convert.jsonDecode(result.body))["result"];
        print(this._productList);
        print(this._productList.length);
      });
    }else {
      print("http get failed, ${result.statusCode}");
    }


  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("http demo"),
      ),
      body: this._productList.length>0?ListView(
        children:this._productList.map((value){
          return ListTile(title: Text(value["title"]));

        }).toList()


      ):Text("加载中")
    );
  }
}
