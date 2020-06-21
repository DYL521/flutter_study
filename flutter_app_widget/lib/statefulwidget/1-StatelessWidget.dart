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
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  int count = 0;
 // 如果构造函数是常量，那么变量也应该是常量，否则会报错
  HomePage();


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        SizedBox(
          height: 200,
        ),
        Text("${this.count}"),
        SizedBox(
          height: 20,
        ),
        RaisedButton(
          child: Text("button"),
          onPressed: () {
//            setSate(); // 不能改变页面的状态，StatelessWidget 是无状态的
            this.count++;
            print(this.count);
          },
        )
      ],
    );
  }

}
