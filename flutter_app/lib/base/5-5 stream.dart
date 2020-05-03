import 'dart:io';

// 文件默认是单订阅的模式
void main() {
  // 数据流
  Stream<List<int>> stream = new File(
          "/Users/dyldengyurin/flutter_project/testfullter/flutter_app/lib/1.txt")
      .openRead();

  // Dart 没有byte[]
  var listen = stream.listen((s) {
    print("ssss");
  });

  listen.onData((s) {
    print("ssss2");
  });

  // 读完整个文件
  listen.onDone(() {
    print("读完整个文件");
  });

  // 两个订阅者就会报错
//  stream.listen((s) {
//    print(s);
//  });

  listen.pause(); //暂停
  listen.resume(); //恢复

  new File(
          "/Users/dyldengyurin/flutter_project/testfullter/flutter_app/lib/1.txt")
      .readAsBytes()
      .then((t) {
    print(t);
  });
  // then 返回一个事件
  // listen 返回StreamSubscription


  // 文件写操作
  var dst = new File("/Users/dyldengyurin/flutter_project/testfullter/flutter_app/lib/2.txt");
//  dst.writeAsString("xxxxxxx");

 //文件转存
  Stream<List<int>> stream2 = new File(
      "/Users/dyldengyurin/flutter_project/testfullter/flutter_app/lib/1.txt")
      .openRead();
  var write = dst.openWrite();
  write.addStream(stream);

}
