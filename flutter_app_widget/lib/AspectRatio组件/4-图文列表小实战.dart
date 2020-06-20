import 'package:flutter/material.dart';
import 'listData.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("动态列表list")),
        body: HomeContent(),
      ),
    );
  }
}

// 图文列表实战
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: listData.map((value) {
        return Card(
          margin: EdgeInsets.all(10), //边距
          child: Column(
            //view不能再嵌套listview
            children: <Widget>[
              AspectRatio(
                aspectRatio: 20 / 9,
                child: Image.network(
                  value["imageUrl"],
                  fit: BoxFit.cover,
                ), //BoxFit.cover 图片充满容器
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(value["imageUrl"]),
                ), //BoxFit.cover 图片充满容器,
                title: Text(value["title"]),
                subtitle: Text(value["title"]),
              )
            ],
          ), //列 list view不能再嵌套listview
        );
      }).toList(),
    );
  }
}
