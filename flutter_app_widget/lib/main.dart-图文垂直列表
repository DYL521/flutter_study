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
    return ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[
        // 任何Widget 都可以放
        Image.network("https://www.itying.com/images/flutter/1.png"),
        Container(
          child: Text(
            "我是一个标题",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28
            ),
          ),
          height: 60,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),//间距
        ),

        Image.network("https://www.itying.com/images/flutter/2.png"),
        Image.network("https://www.itying.com/images/flutter/3.png"),
        Image.network("https://www.itying.com/images/flutter/4.png"),
      ],
    );
  }
}
