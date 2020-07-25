import 'package:flutter/cupertino.dart';

// 混入ChangeNotifier
class Counter with ChangeNotifier {
  var   value = 0;

  increment() {
    value++;
    notifyListeners();// 通知听众，局部刷新
  }
}
