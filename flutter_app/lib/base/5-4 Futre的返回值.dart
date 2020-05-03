
import 'dart:io';

import 'package:flutterapp/base/3-1-1.dart';

void main(){

  //向任务提交一个普通任务
  Future<String> then =  new File(r"/Users/dyldengyurin/flutter_project/testfullter/flutter_app/lib/1.txt").readAsString().then((String s){
    print("读取文件的结果: "+ s);

    return "1";
  }).catchError((s,e){// 捕获可能出现的异常信息，防止后面的函数不再执行

  });

  then.then((String i){
    print("几首到："+ i);
  });

  //then: 可以得到一个future的结果并且能够返回一个新的Future -> 很像链式调用～～

  // UI操作

  //通过then，完成任务的有序执行，执行一个任务之后，根据结果执行任务
  
  //如果需要一组任务执行完毕后，再执行同一的逻辑
  Future.wait([Future.delayed(Duration(seconds: 100)),Future.delayed(Duration(seconds: 200))]).then((_){
    print(1); // 执行两次休眠后，输出1
  });


  Future.forEach([1,2,3,4,5], (i){
    print(i);
  });
}