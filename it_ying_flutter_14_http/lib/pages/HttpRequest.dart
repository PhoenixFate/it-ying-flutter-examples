import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import "package:http/http.dart" as http;

class HttpPage extends StatefulWidget {
  HttpPage({Key key}) : super(key: key);

  @override
  _HttpPageState createState() => _HttpPageState();
}

class _HttpPageState extends State<HttpPage> {

  String _getResponse;
  String _postResponse;

  _getData() async {
    var url =
        "http://454.454hosp.cn:57059/ybDecardform/getDeptsTest.htm?action=GETCZYSXX&ksdm=220602&ksrq=20190912&jsrq=20190915";
    var result = await http.get(url);

    if (result.statusCode == 200) {
      print(result.toString());
      var jsonResult = convert.jsonDecode(result.body);
      print(jsonResult);
    } else {
      print('Request failed with status: ${result.statusCode}.');
    }
  }



  _getData0() async {
    //在真机模拟中localhost,127.0.0.1指向android内部了
    var url="http://192.168.1.8:3000/news";
    var response=await http.get(url);
    if(response.statusCode==200){
      var jsonResult=convert.jsonDecode(response.body);
      print(jsonResult);
      setState(() {
        this._getResponse=jsonResult["msg"];
      });
    }else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  _postData() async {
    var url="http://192.168.1.8:3000/doLogin";
    var response=await http.post(url,body: {"name":"zhangsan"});
    if(response.statusCode==200){
      var jsonResult=convert.jsonDecode(response.body);
      print(jsonResult);
      setState(() {
        this._postResponse=jsonResult["msg"];
      });
    }else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("http page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,      
        children: <Widget>[
          Container(
            height: 100,
            width: 100,
            color: Colors.red,
            child: RaisedButton(
            
            child: Text("http get 获取数据0"),
            onPressed: () {
              _getData();
            },
          ),),
          RaisedButton(child: Text("http get localhost data: $_getResponse"),onPressed:_getData0),
          RaisedButton(child: Text("http post data: $_postResponse"),onPressed: _postData,),
          
        ],
      ),
    );
  }
}
