import 'package:flutter/material.dart';



// state的生命周期
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isShowChild;

  ///当Widget第一次插入到Widget树时会被调用，对于每一个State对象，Flutter framework只会调用一次该回调
  @override
  void initState() {
    super.initState();
    isShowChild = true;
    debugPrint("parent initState......");
  }

  ///初始化时，在initState()之后立刻调用
  ///当依赖的InheritedWidget rebuild,会触发此接口被调用
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    debugPrint("parent didChangeDependencies......");
  }

  ///绘制界面，当setState触发的时候会再次被调用
  @override
  Widget build(BuildContext context) {
    debugPrint("parent build......");
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: RaisedButton(
              onPressed: () {
                setState(() {
                  isShowChild = !isShowChild;
                });
              },
              child: isShowChild ? Child() : Text("演示移除Child"),
            )),
      ),
    );
  }

  ///状态改变的时候会调用该方法,比如调用了setState
  @override
  void didUpdateWidget(MyApp oldWidget) {
    super.didUpdateWidget(oldWidget);
    debugPrint("parent didUpdateWidget......");
  }

  ///当State对象从树中被移除时，会调用此回调
  @override
  void deactivate() {
    super.deactivate();
    debugPrint('parent deactivate......');
  }

  ///当State对象从树中被永久移除时调用；通常在此回调中释放资源
  @override
  void dispose() {
    super.dispose();
    debugPrint('parent dispose......');
  }
}

class Child extends StatefulWidget {
  @override
  _ChildState createState() => _ChildState();
}

class _ChildState extends State<Child> {
  @override
  Widget build(BuildContext context) {
    debugPrint("child build......");
    return Text('lifeCycle');
  }

  @override
  void initState() {
    super.initState();
    debugPrint("child initState......");
  }

  ///初始化时，在initState()之后立刻调用
  ///当依赖的InheritedWidget rebuild,会触发此接口被调用
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    debugPrint("child didChangeDependencies......");
  }

  ///父widget状态改变的时候会调用该方法,比如父节点调用了setState
  @override
  void didUpdateWidget(Child oldWidget) {
    super.didUpdateWidget(oldWidget);
    debugPrint("child didUpdateWidget......");
  }

  ///当State对象从树中被移除时，会调用此回调
  @override
  void deactivate() {
    super.deactivate();
    debugPrint('child deactivate......');
  }

  ///当State对象从树中被永久移除时调用；通常在此回调中释放资源
  @override
  void dispose() {
    super.dispose();
    debugPrint('child dispose......');
  }
}