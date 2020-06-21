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

// StatefulWidget 有状态的组件
class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  List list = new List();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        Column(
          children: this.list.map((value) {
            return ListTile(
              title: Text(value),
            );
          }).toList(),
        ),
        SizedBox(
          height: 20,
        ),
        RaisedButton(
          child: Text("按钮"),
          onPressed: () {
            setState(() { // 数据改变就会重写渲染
              this.list.add("新增数据1");
              this.list.add("新增数据2");
            });
          },
        ),
      ],
    );
  }
}
