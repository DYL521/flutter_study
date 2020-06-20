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

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Stack(
//        alignment: Alignment.bottomLeft, //子元素全部显示位置
        alignment: Alignment(0, 0), //The distance fraction in the horizontal direction也是配置显示位置
        children: <Widget>[
          Container(
            height: 400,
            width: 300,
            color: Colors.red,
          ),
          Text(
            "我是一个文本1",
            style: TextStyle(fontSize: 40, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
