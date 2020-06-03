import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// 自定义组件
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
//    return HomeContent();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Dome"),
        ),
      body: HomeContent(),
      ),

    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
      child: new Text(
        "你好,fltter2",
        textDirection: TextDirection.ltr,
        style: TextStyle(fontSize: 20.0, color: Colors.blue),
      ),
    );
    ;
  }
}
