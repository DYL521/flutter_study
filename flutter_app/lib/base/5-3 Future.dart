import 'dart:io';

void main() {
  //延时3s
  Future f = Future.delayed(Duration(seconds: 3));

  //future的执行记过 通过then可以获取
  f.then((t) {
    print("t");
  });
  
  //向任务提交一个普通任务
  new File(r"/Users/dyldengyurin/flutter_project/testfullter/flutter_app/lib/1.txt").readAsString().then((String s){
    print("读取文件的结果: "+ s);

    return 1;
  }).catchError((s,e){// 捕获可能出现的异常信息，防止后面的函数不再执行

  });

  Future.delayed(Duration(seconds: 100));

}
