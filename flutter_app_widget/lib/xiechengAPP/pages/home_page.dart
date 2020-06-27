import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart'; // 轮播图的实现

const APPBAR_SCROLL_OFFSET = 100;

class HomePage extends StatefulWidget {
  // 有状态的Widget
  @override
  State<StatefulWidget> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  List _imageUrls = [
    "https://dimg04.c-ctrip.com/images/0zg1y1200028g96bj2A31.jpg",
    "https://dimg04.c-ctrip.com/images/zg0n1g000001hi84zB7D6.jpg",
    "https://dimg04.c-ctrip.com/images/zg0n1g000001hi84zB7D6.jpg"
  ];

  double appBarAppha = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    _onScroll(offset) {
      //offset 滚动的距离
      print("监听到：${offset}");
      // 动态设置appBarAppha，改变透明度
      double alpha = offset / APPBAR_SCROLL_OFFSET;

      if (alpha < 0) {
        alpha = 0;
      } else if(alpha>1) {
        alpha = 1;
      }
      setState(() {
        appBarAppha = alpha;
      });
      print(appBarAppha);
    }

    return Scaffold(
      body: Stack(
        children: <Widget>[
          MediaQuery.removePadding(
            removeTop: true, // 移除顶部的padding
            removeBottom: true,
            context: context,
            child: NotificationListener(
              onNotification: (scrollNotification) {
                if (scrollNotification is ScrollNotification && //ScrollNotification 滚动
                    scrollNotification.depth == 0) { // 只检测最外层的ListView 的事件
                  // 滚动 并且是列表滚动的时候
                  _onScroll(scrollNotification.metrics.pixels);
                }
              },
              child: ListView(
                children: <Widget>[
                  Container(
                    height: 180, // banner的高度
                    child: Swiper(
                      itemCount: _imageUrls.length,
                      autoplay: true, // 自动播放
                      itemBuilder: (BuildContext context, int index) {
                        return Image.network(
                          _imageUrls[index],
                          fit: BoxFit.cover,
                        );
                      },
                      pagination: SwiperPagination(), // 底部按钮
                    ),
                  ),
                  Container(
                    height: 800,
                    child: ListTile(
                      title: Text("哈哈哈1231232323"),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Opacity(
            // 颜色渐变效果
            opacity: appBarAppha,
            child: Container(
              height: 80,
              decoration: BoxDecoration(color: Colors.white),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text("首页"),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
