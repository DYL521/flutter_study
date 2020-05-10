import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp2());

class MyApp extends StatelessWidget {
  String data;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    //1、无风格
//    return  Center(child: Text("我很帅",textDirection:TextDirection.ltr)); //TextDirection 文本的方向


    // 2、MaterialApp 风格，一般不常用这个风格
//    return MaterialApp(
////      home: Center(
////          child: Text(
////        "我很帅",
////      )), //TextDirection 文本的方向
////    );

    // 3、Scaffold 白底黑字
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("哈哈，我是一个标题啊")),
      body: Center(
          child: Text(
        data,
      )),
    ));
  }


}

/**************参数动态变化*****************************/

class MyApp2 extends StatefulWidget {
  @override
  _MyApp2State createState() => _MyApp2State();
}

class _MyApp2State extends State<MyApp2> {

  String data="初始值";

  _MyApp2State() {
    Future.delayed(Duration(seconds: 3)).then((s) {
      this.data = "大保健123";
      // 修改状态
      setState(() {
        debugPrint("重新构建界面～～");
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text("哈哈，参数动态变化")),
          body: Center(
              child: Text(data,)),
        ));
  }
}
