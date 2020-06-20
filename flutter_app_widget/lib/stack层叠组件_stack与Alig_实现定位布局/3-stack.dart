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

// 多个元素进行层叠，内部相对布局 stack Positioned

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        height: 400,
        width: 300,
        color: Colors.red,
        padding: EdgeInsets.all(10),
        child: Stack(
//          alignment: Alignment.center, //alignment 同时都剧中了，不能精确控制
          children: <Widget>[
            Positioned( // Positioned 也是控制相对位置
              left: 10,
              child: Icon(
                Icons.home,
                size: 10,
                color: Colors.white,
              ),
            ),

            Positioned(
              bottom: 0,
              child: Icon(
                Icons.keyboard,
                size: 40,
                color: Colors.white,
              ),
            ),

            Positioned(
              right: 0,
              child: Icon(
                Icons.send,
                size: 40,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
