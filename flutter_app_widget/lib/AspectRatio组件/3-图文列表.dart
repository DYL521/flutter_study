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
          margin: EdgeInsets.all(10), //边距
          child: Column(
            //view不能再嵌套listview
            children: <Widget>[
              AspectRatio(
                aspectRatio: 20 / 9,
                child: Image.network(
                  "https://www.itying.com/images/flutter/2.png",
                  fit: BoxFit.cover,
                ), //BoxFit.cover 图片充满容器
              ),
              ListTile(
                leading: CircleAvatar( // ClipOval CircleAvatar 都可以实现小图片 CircleAvatar是专门处理头像的
                  backgroundImage: NetworkImage(
                    "https://www.itying.com/images/flutter/2.png",
                  ), //BoxFit.cover 图片充满容器,,
                ),
                title: Text("xxx"),
                subtitle: Text("xxx"),
              )
            ],
          ), //列 list view不能再嵌套listview
        ),
        Card(
          margin: EdgeInsets.all(10), //边距
          child: Column(
            //view不能再嵌套listview
            children: <Widget>[
              AspectRatio(
                aspectRatio: 20 / 9,
                child: Image.network(
                  "https://www.itying.com/images/flutter/2.png",
                  fit: BoxFit.cover,
                ), //BoxFit.cover 图片充满容器
              ),
              ListTile(
                leading: ClipOval(
                  child: Image.network(
                    "https://www.itying.com/images/flutter/2.png",
                    fit: BoxFit.cover,
                    height: 60,
                    width: 60,
                  ), //BoxFit.cover 图片充满容器,
                ),
                title: Text("xxx"),
                subtitle: Text("xxx"),
              )
            ],
          ), //列 list view不能再嵌套listview
        ),
        Card(
          margin: EdgeInsets.all(10), //边距
          child: Column(
            //view不能再嵌套listview
            children: <Widget>[
              AspectRatio(
                aspectRatio: 20 / 9,
                child: Image.network(
                  "https://www.itying.com/images/flutter/2.png",
                  fit: BoxFit.cover,
                ), //BoxFit.cover 图片充满容器
              ),
              ListTile(
                leading: ClipOval(
                  child: Image.network(
                    "https://www.itying.com/images/flutter/2.png",
                    fit: BoxFit.cover,
                    height: 60,
                    width: 60,
                  ), //BoxFit.cover 图片充满容器,
                ),
                title: Text("xxx"),
                subtitle: Text("xxx"),
              )
            ],
          ), //列 list view不能再嵌套listview
        ),

        Card(
          margin: EdgeInsets.all(10), //边距
          child: Column(
            //view不能再嵌套listview
            children: <Widget>[
              AspectRatio(
                aspectRatio: 20 / 9,
                child: Image.network(
                  "https://www.itying.com/images/flutter/2.png",
                  fit: BoxFit.cover,
                ), //BoxFit.cover 图片充满容器
              ),
              ListTile(
                leading: ClipOval(
                  child: Image.network(
                    "https://www.itying.com/images/flutter/2.png",
                    fit: BoxFit.cover,
                    height: 60,
                    width: 60,
                  ), //BoxFit.cover 图片充满容器,
                ),
                title: Text("xxx"),
                subtitle: Text("xxx"),
              )
            ],
          ), //列 list view不能再嵌套listview
        ),

        Card(
          margin: EdgeInsets.all(10), //边距
          child: Column(
            //view不能再嵌套listview
            children: <Widget>[
              AspectRatio(
                aspectRatio: 20 / 9,
                child: Image.network(
                  "https://www.itying.com/images/flutter/2.png",
                  fit: BoxFit.cover,
                ), //BoxFit.cover 图片充满容器
              ),
              ListTile(
                leading: ClipOval(
                  child: Image.network(
                    "https://www.itying.com/images/flutter/2.png",
                    fit: BoxFit.cover,
                    height: 60,
                    width: 60,
                  ), //BoxFit.cover 图片充满容器,
                ),
                title: Text("xxx"),
                subtitle: Text("xxx"),
              )
            ],
          ), //列 list view不能再嵌套listview
        ),


      ],
    );
  }
}
