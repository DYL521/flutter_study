

import 'dart:io';
import 'dart:isolate';

// 微任务队列任务优先级高于普通任务队列
void main(){
   var receivePort= new ReceivePort();

   // 主Isolate
   receivePort.listen((t){
    print(t);

   });
   
   //在为任务队列中提交一个人任务
  Future.microtask((){
     print("微任务队列1");
   });

   //提交一个普通任务
   receivePort.sendPort.send("发送消息1");

   //在为任务队列中提交一个人任务
   Future.microtask((){
     print("微任务队列2");
   });

   //提交一个普通任务
   receivePort.sendPort.send("发送消息2");


   //在为任务队列中提交一个人任务
   Future.microtask((){
     print("微任务队列3");

//     sleep(Duration(seconds: 1001)); //任务阻塞
   });

   //提交一个普通任务
   receivePort.sendPort.send("发送消息3");

   // 微任务任务优先机全部高于普通任务
  // 微任务队列的任务会不会插队执行呢？会插队执行～每次都会检查
}