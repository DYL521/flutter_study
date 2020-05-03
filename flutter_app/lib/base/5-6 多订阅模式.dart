
// 文件如何多订阅呢？
import 'dart:io';

void main(){

  Stream<List<int>> stream = new File(
      "/Users/dyldengyurin/flutter_project/testfullter/flutter_app/lib/1.txt")
      .openRead();

  //stream默认单订阅模式，多个就会报错
//  var listen = stream.listen((s){
//
//  });
  //An async operation is currently pending, path = '/Users/dyldengyurin/flutter_project/testfullter/flutter
//  stream.listen((s){
//
//  });

 //广播模式, 不能listen再转成广播模式
  var broadcastStream = stream.asBroadcastStream();

  //多订阅
  broadcastStream.listen((_){});
  broadcastStream.listen((_){});
  broadcastStream.listen((_){});

  
}