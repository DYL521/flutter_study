import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterappwidget/BottomNavigationbar/pages/tabs/Setting.dart';

import 'tabs/Home.dart';
import 'tabs/CategoryPage.dart';
import 'tabs/CategoryPage.dart';

class Tabs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TabsState();
  }
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;

  List _pageList = [HomePage(), SettingPage(), CategoryPage()];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("xxxxx"),
        ),
        body: this._pageList[this._currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: this._currentIndex, // 选中的tab
          onTap: (int index) {
            setState(() {
              //重新渲染
              this._currentIndex = index;
            });
            print(this._currentIndex);
          }, // 底部点中执行的方法
          iconSize: 38.0,
          fixedColor: Colors.red, //选中的颜色
          type: BottomNavigationBarType.fixed, // 配置底部tabs可以有多个按钮
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
        ));
  }
}
