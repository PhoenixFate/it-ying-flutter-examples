import 'package:flutter/material.dart';

class PracticePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("practice demo")),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
            
                child: Container(
                  height: 200,
                  color: Colors.black,
                  child: Text(
                    "flutter",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  height: 200,
                  child: Image.network(
                    "https://www.itying.com/images/flutter/1.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                flex: 1,
                child: Container(
                    height: 200,
                    child: ListView(
                      children: <Widget>[
                        Container(
                          height: 95,
                          child: Image.network(
                            "https://www.itying.com/images/flutter/1.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 95,
                          child: Image.network(
                            "https://www.itying.com/images/flutter/1.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    )),
              )
            ],
          ),
        ],
      ),
    );
  }
}
