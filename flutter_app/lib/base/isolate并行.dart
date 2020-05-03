import 'dart:io';
import 'dart:isolate';


void main() {

  Isolate.spawn(i1, "");
  Isolate.spawn(i2, "");

  while(true){}
}

/// isolate 并发，有自己的任务队列,不是共享同一个任务队列！！
void i1( msg) {
  print("isolate1 执行");

  Future.doWhile((){
    print("isolate1 future");
    return true;
  });
}

void i2( msg) {
  print("isolate2 执行");
  Future.doWhile((){
    print("isolate2 future");
    return true;
  });

}


