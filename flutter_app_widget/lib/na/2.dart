import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return HomePage();
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(home: Tabs());
  }
}

class Tabs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TabsState();
  }
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("xxxxx"),
        ),
        body: Text("xxx11111"),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: this._currentIndex, // 选中的tab
          onTap: (int index) {
            setState(() { //重新渲染
              this._currentIndex = index;
            });
            print(this._currentIndex);
          }, // 底部点中执行的方法
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("首页"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              title: Text("分类"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              title: Text("设置"),
            ),
          ],
        )
    );
  }
}
