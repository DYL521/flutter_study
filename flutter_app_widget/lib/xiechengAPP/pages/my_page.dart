import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  // 有状态的Widget
  @override
  State<StatefulWidget> createState() => _MyPage();
}

class _MyPage extends State<MyPage> {
  final _controller = PageController(
    initialPage: 0, //初始页面
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Text("我的"),
      )
    ); // 页面的根结点
  }
}
