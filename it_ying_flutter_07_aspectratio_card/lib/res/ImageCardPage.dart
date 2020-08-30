import 'package:flutter/material.dart';
import './listData.dart';


class ImageCardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("image card"),
      ),
      body: ListView(
        children: listData.map((value){
          return Card(
            margin: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 20 / 9,
                  child: Image.network(value["imageUrl"],fit: BoxFit.fill,),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(value["imageUrl"]),
                  ),
                  title: Text(value["title"]),
                  subtitle: Text(value["description"],maxLines: 1, overflow: TextOverflow.ellipsis,),
                )
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
