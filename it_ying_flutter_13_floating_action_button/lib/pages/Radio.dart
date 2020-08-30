import 'package:flutter/material.dart';

class RadioPage extends StatefulWidget {
  RadioPage({Key key}) : super(key: key);

  @override
  _RadioPageState createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  var sex = 1;

  var _newSex=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("radio page"),
      ),
      body: Padding(padding: EdgeInsets.all(20),child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text("男"),
              Radio(
                value: 1,
                //点击选择的时候，会把value传入
                onChanged: (value) {
                  print("first value: "+value.toString());
                  setState(() {
                    this.sex = value;
                  });
                },
                groupValue: this.sex,
              ),
              SizedBox(width: 20,),
              Text("女"),
              Radio(
                value: 2,
                onChanged: (value) {
                  print("second value: "+value.toString());
                  setState(() {
                    this.sex = value;
                  });
                },
                groupValue: this.sex,
              )
            ],
          ),

          Row(children: <Widget>[
            Text("${this.sex}"),
            SizedBox(width: 20,),
            Text(this.sex==1?"男":"女")
          ],),


          
            RadioListTile(
              value:1,
              onChanged: (value){
                setState(() {
                  this._newSex=value;
                });
              },
              groupValue: this._newSex,
              title: Text("标题"),
              subtitle: Text("二级标题"),
              secondary: Icon(Icons.help),
              selected: this._newSex==1,
            ),
            RadioListTile(
              value:2,
              onChanged: (value){
                setState(() {
                  this._newSex=value;
                });
              },
              groupValue: this._newSex,
              title: Text("标题2"),
              subtitle: Text("二级标题2"),
              secondary: Image.network("https://www.itying.com/images/flutter/1.png"),
              //selected 选中的时候 文本高亮
              selected: this._newSex==2,
            )

          


        ],
      ),)
      
       
    );
  }
}
