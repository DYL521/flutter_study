import 'package:flutter/material.dart';
import 'package:flutterappwidget/xiechengAPP/pages/my_page.dart';
import 'package:flutterappwidget/xiechengAPP/pages/serch_page.dart';
import 'package:flutterappwidget/xiechengAPP/pages/travel_page.dart';
import 'package:flutterappwidget/xiechengAPP/pages/home_page.dart';
class TabNavigator extends StatefulWidget {
  // 有状态的Widget
  @override
  State<StatefulWidget> createState() => _TabNavigator();
}

class _TabNavigator extends State<TabNavigator> {
  final _defaultColor = Colors.grey; // 默认未选中，灰色
  final _activateColor = Colors.blue; // 默认选中，蓝色
  int _currentIndex = 0; // tab选中第几个

  final _controller = PageController(
    initialPage: 0, //初始页面
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: <Widget>[
          HomePage(),
          SerchMyPage(),
          TravelMyPage(),
          MyPage(),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex, //当前index
        onTap: (index){
          _controller.jumpToPage(index); // 跳转对应的index
          setState(() { // setState 页面重新绘制
            _currentIndex = index; // 改变_currentIndex，index 从0开始
          });
        },
        type:BottomNavigationBarType.fixed , // 类型： fixed 固定
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: _defaultColor,
              ),
              activeIcon: Icon(
                // 选中的颜色
                Icons.home,
                color: _activateColor,
              ),
              title: Text(
                "首页",
                style: TextStyle(
                  color: _currentIndex != 0 ? _defaultColor : _activateColor,
                ),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: _defaultColor,
              ),
              activeIcon: Icon(
                // 选中的颜色
                Icons.search,
                color: _activateColor,
              ),
              title: Text(
                "搜索",
                style: TextStyle(
                  color: _currentIndex != 1 ? _defaultColor : _activateColor,
                ),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.camera_alt,
                color: _defaultColor,
              ),
              activeIcon: Icon(
                // 选中的颜色
                Icons.camera_alt,
                color: _activateColor,
              ),
              title: Text(
                "旅拍",
                style: TextStyle(
                  color: _currentIndex != 2 ? _defaultColor : _activateColor,
                ),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
                color: _defaultColor,
              ),
              activeIcon: Icon(
                // 选中的颜色
                Icons.account_circle,
                color: _activateColor,
              ),
              title: Text(
                "我的",
                style: TextStyle(
                  color: _currentIndex != 3 ? _defaultColor : _activateColor,
                ),
              )),
        ],
      ), // 底部导航
    ); // 页面的根结点
  }
}
