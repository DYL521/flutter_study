import 'package:flutter/material.dart';

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

// 卡片布局
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  "张三",
                  style: TextStyle(fontSize: 28),
                ),
                subtitle: Text("高级工程师"),
              ),
              ListTile(
                title: Text("电话xxxx"),
              ),
              ListTile(
                title: Text("地址xx"),
              )

            ],
          ), //列 list view不能再嵌套listview
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  "张三",
                  style: TextStyle(fontSize: 28),
                ),
                subtitle: Text("高级工程师"),
              ),
              ListTile(
                title: Text("电话xxxx"),
              ),
              ListTile(
                title: Text("地址xx"),
              )

            ],
          ), //列 list view不能再嵌套listview
        ),

        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  "张三",
                  style: TextStyle(fontSize: 28),
                ),
                subtitle: Text("高级工程师"),
              ),
              ListTile(
                title: Text("电话xxxx"),
              ),
              ListTile(
                title: Text("地址xx"),
              )

            ],
          ), //列 list view不能再嵌套listview
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  "张三",
                  style: TextStyle(fontSize: 28),
                ),
                subtitle: Text("高级工程师"),
              ),
              ListTile(
                title: Text("电话xxxx"),
              ),
              ListTile(
                title: Text("地址xx"),
              )

            ],
          ), //列 list view不能再嵌套listview
        )


      ],
    );
  }
}
