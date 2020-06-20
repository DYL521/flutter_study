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
        appBar: AppBar(title: Text("RaisedButton")),
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
      height: 600,
      width: 400,
      color: Colors.red,
      padding: EdgeInsets.all(10),
      child: Wrap( //Wrap 自动换行
        spacing: 10, // 横轴间距
        runSpacing: 10, //纵轴间距
        alignment: WrapAlignment.spaceEvenly, // 对齐方式
        runAlignment: WrapAlignment.center,
        children: <Widget>[
          MyButton("第一季"),
          MyButton("第一季"),
          MyButton("第一季 第一季"),
          MyButton("第一季"),
          MyButton("第一季"),
          MyButton("第一季sssssssss"),
          MyButton("第一季"),

        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final String text;

  // text 是必传参数,{} 可选参数列表
  const MyButton(this.text, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      child: Text(this.text),
      textColor: Theme.of(context).accentColor,
      onPressed: () {},
    );
  }
}
