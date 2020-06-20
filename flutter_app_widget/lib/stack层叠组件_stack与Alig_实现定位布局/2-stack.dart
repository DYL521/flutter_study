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

// 多个元素进行层叠，内部相对布局
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        height: 400,
        width: 300,
        color: Colors.red,
        child: Stack(
//          alignment: Alignment.center, //alignment 同时都剧中了，不能精确控制
          children: <Widget>[
            Align( // Align 单独控制每个元素的位置,相对于最外边的位置
              alignment: Alignment.topLeft,
              child: Icon(
                Icons.home,
                size: 40,
                color: Colors.white,
              ),
            ),


            Align(
              alignment: Alignment.bottomRight,
              child: Icon(
                Icons.keyboard,
                size: 40,
                color: Colors.white,
              ),
            ),

            Align(
              alignment: Alignment.center,
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
