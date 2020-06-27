import 'package:flutter/material.dart';

class SerchMyPage extends StatefulWidget {
  // 有状态的Widget
  @override
  State<StatefulWidget> createState() => _SerchMyPage();
}

class _SerchMyPage extends State<SerchMyPage> {
  final _controller = PageController(
    initialPage: 0, //初始页面
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Text("搜索"),
      )
    ); // 页面的根结点
  }
}
