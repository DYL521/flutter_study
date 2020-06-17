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
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: GridView.count(
        crossAxisCount: 2, // 一行几列数据
        childAspectRatio: 1.7, // 宽高比例
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              "https://www.itying.com/images/flutter/2.png",
              fit: BoxFit.cover,
            ), // BoxFit.cover 充满屏幕
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              "https://www.itying.com/images/flutter/2.png",
              fit: BoxFit.cover,
            ), // BoxFit.cover 充满屏幕
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              "https://www.itying.com/images/flutter/2.png",
              fit: BoxFit.cover,
            ), // BoxFit.cover 充满屏幕
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              "https://www.itying.com/images/flutter/2.png",
              fit: BoxFit.cover,
            ), // BoxFit.cover 充满屏幕
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              "https://www.itying.com/images/flutter/2.png",
              fit: BoxFit.cover,
            ), // BoxFit.cover 充满屏幕
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              "https://www.itying.com/images/flutter/2.png",
              fit: BoxFit.cover,
            ), // BoxFit.cover 充满屏幕
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              "https://www.itying.com/images/flutter/2.png",
              fit: BoxFit.cover,
            ), // BoxFit.cover 充满屏幕
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              "https://www.itying.com/images/flutter/2.png",
              fit: BoxFit.cover,
            ), // BoxFit.cover 充满屏幕
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              "https://www.itying.com/images/flutter/2.png",
              fit: BoxFit.cover,
            ), // BoxFit.cover 充满屏幕
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              "https://www.itying.com/images/flutter/2.png",
              fit: BoxFit.cover,
            ), // BoxFit.cover 充满屏幕
          ),
        ],
      ),
    );
  }
}
