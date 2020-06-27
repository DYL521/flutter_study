import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  // 有状态的Widget
  @override
  State<StatefulWidget> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  final _controller = PageController(
    initialPage: 0, //初始页面
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Text("首页"),
      )
    ); // 页面的根结点
  }
}
