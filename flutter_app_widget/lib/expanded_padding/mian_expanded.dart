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

//    return IconContainer(Icons.home);
    return Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: IconContainer(Icons.home,color: Colors.blue,),
        ),
        Expanded(
          flex: 2, // 权重分配
          child: IconContainer(Icons.home,color: Colors.lightBlue,),
        ),
        Expanded(
          flex: 1,
          child: IconContainer(Icons.home,color: Colors.blue,),
        ),
      ],
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
      color: this.color,
      child: Center(
        child: Icon(
          this.icon,
          size: this.size,
          color: Colors.red,
        ),
      ),
    );
  }
}
