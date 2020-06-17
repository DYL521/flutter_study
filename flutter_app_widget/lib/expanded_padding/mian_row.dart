import 'package:flutter/material.dart';


// 水平布局组件
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

//    return IconContainer(Icons.home);
    return Container(
      height: 800,
      width: 400,
      color: Colors.orange,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, //位置 spaceEvenly 均匀分配 行轴
        crossAxisAlignment: CrossAxisAlignment.start, // y轴 位置

        children: <Widget>[
          IconContainer(Icons.home),
          IconContainer(Icons.satellite),
          IconContainer(Icons.send),
          IconContainer(Icons.list),
        ],
      ),
    );
  }
}

class IconContainer extends StatelessWidget {
  double size = 32.0;
  Color color = Colors.red;
  IconData icon;

  /**
   * icon 是必传参数
   * {this.color, this.size} 是可选参数
   */
  IconContainer(this.icon, {this.color, this.size}) {}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 100,
      width: 100,
      color: Colors.blue,
      child: Center(
        child: Icon(
          this.icon,
          size: this.size,
          color: this.color,
        ),
      ),
    );
  }
}
