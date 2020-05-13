import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 演示Dart的路由管理
// 命名的路由地址
void main() => runApp(MainPage());

class MainPage extends StatelessWidget {
  //无状态
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      // 路由表的注册
      routes: {
        "/":(_){ // 默认的首页路由地址
          return MainpageDetail();
        },
          "/page2":(_)=> page2()
      },

      title: "路由界面",
      home: MainpageDetail(),
    );
  }
}

class MainpageDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("第一个页面2"),
      ),
      body: Column(
        //线性布局+ 垂直方向
        children: <Widget>[
          RaisedButton(
            onPressed: () async {
              // Navigator 一直往上查找，Navigator为空就会报错，root不会创建Navigator[这里必须要获得Navigator]
              // MaterialApp 自己创建了Navigator，获得到就可以了(MaterialApp 会创建很多的widget)
              Lance lance = await Navigator.pushNamed(context, "/page2");

              debugPrint(lance.toString());

            },
            child: Text("跳转第二个界面"),
          )
        ],
      ),
    );
  }
}

class page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Navigator 返回是空的，不能返回Text()
    // 源码中也不能root
    return Scaffold(
      appBar: AppBar(
        title: Text("第二个界面"),
      ),
      body: Column(
        //线性布局+ 垂直方向
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              // 界面弹出
              // 返回参数给一个界面
              Navigator.pop(context, Lance("DYL", 25));
            },
            child: Text("xxxxx"),
          )
        ],
      ),
    );
  }
}

class Lance {
  String name;
  int age;

  Lance(this.name, this.age);

  @override
  String toString() {
    return 'Lance{name: $name}';
  }


}
