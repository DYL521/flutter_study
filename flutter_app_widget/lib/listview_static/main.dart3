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
      child: new Container(
        child: Text("Dart Flutter教程_Dart -2020年新 Dart Flutter教程_Dart Flutter入门实战视频教程-2020年新出-第14讲以后是Flutter教程",
          textAlign: TextAlign.left,
          overflow: TextOverflow.ellipsis,
          maxLines: 2, //最大行数
          textScaleFactor: 2,//字体放大
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.red,
            fontWeight: FontWeight.bold,// 字体加粗，
            fontStyle: FontStyle.italic, //文字
            decoration: TextDecoration.lineThrough,
            decorationColor: Colors.white,
            decorationStyle: TextDecorationStyle.dashed,
            letterSpacing: 2.0, //字间距
          ),
        ),
        height: 300.0,// 都是double
        width: 300.0,
        decoration: BoxDecoration( // 背景
        color: Colors.yellow,
        border: Border.all( // 边框
          color: Colors.blueGrey,
          width: 2.0
        ),
          borderRadius:BorderRadius.all( //设置圆角
            Radius.circular(8),
          ),
        ),
//        padding: EdgeInsets.all(20),// 边距
        padding: EdgeInsets.fromLTRB(1, 1, 3, 4),// 边距
//        transform: Matrix4.translationValues(100, 0, 0),// 位移
//        transform: Matrix4.rotationZ(0.3),// 旋转，默认顺时针
        transform: Matrix4.diagonal3Values(1.2,1,1),// 拉伸

        alignment: Alignment.bottomCenter, //对齐 方式
      )
    );
    ;
  }
}
