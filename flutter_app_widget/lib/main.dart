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
        appBar: AppBar(title: Text("xxxxx")),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 180, //高度，父Container
      child: ListView(
        scrollDirection: Axis.horizontal, // 方向 ，水平
        children: <Widget>[
          Container(
            width: 180,
            color: Colors.red,
          ),
          Container(
            child: ListView(
              children: <Widget>[
                Image.network("https://www.itying.com/images/flutter/2.png"),
                Text("我是一个文本"),

              ],
            ),
            width: 180,
            color: Colors.deepOrangeAccent,
          ),
          Container(
            width: 180,
            color: Colors.orange,
          ),
          Container(
            width: 180,
            color: Colors.red,
          ),
          Container(
            width: 180,
            color: Colors.blueGrey,
          ),
        ],
      ),
    );
  }
}
