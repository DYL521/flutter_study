import 'package:flutter/material.dart';

class TravelMyPage extends StatefulWidget {
  // 有状态的Widget
  @override
  State<StatefulWidget> createState() => _TravelMyPage();
}

class _TravelMyPage extends State<TravelMyPage> {
  final _controller = PageController(
    initialPage: 0, //初始页面
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Text("旅行"),
      )
    ); // 页面的根结点
  }
}
