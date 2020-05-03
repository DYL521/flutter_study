
import 'dart:io';
import 'dart:isolate';


int i;

// Isolate 内存隔离
void main(){
 int i =10;

 //1、创建一个消息接受器
   var receivePort =  new ReceivePort();

   //2、将消息接收器的发送器，发送给子Isolate
//  Isolate.spawn(entryPoint, receivePort.sendPort);

  //3、从消息接受器中读取消息
  receivePort.listen((t){
    print(t);
    // 接受到子Isolate的发送器
    if (t is SendPort){

    }else{
      i =t;
      print(t);
    }
  });
  //发送消息
  receivePort.sendPort.send("111");
  receivePort.sendPort.send("2222");

  //4、关闭消息接收器
  receivePort.close();
}

// 相当于自线程，不会影响主线程的Isolate
void entryPoint(SendPort sendPort){
  print(i);

  var receivePort = new ReceivePort();
  var sendPort2=  receivePort.sendPort;
  sendPort.send(sendPort2); // 完成双向的通信！！
  // 监听主Isolate 发送的消息
  receivePort.listen((t){

  });
}

void entryPoint2(SendPort sendPort){
  print(i);

  var receivePort = new ReceivePort();
  var sendPort2=  receivePort.sendPort;
  sendPort.send(sendPort2); // 完成双向的通信！！
  // 监听主Isolate 发送的消息
  receivePort.listen((t){

  });
}
