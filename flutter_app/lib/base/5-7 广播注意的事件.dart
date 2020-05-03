import 'dart:async';

void main() {
  var stream = Stream.fromIterable([1, 2, 3, 4]);

  var broadcastStream = stream.asBroadcastStream();

  broadcastStream.listen((i) {
    print("订阅者1：${i}");
  });

  broadcastStream.listen((i) {
    print("订阅者2：${i}");
  });

  //单订阅模式转换来的：
//  订阅者1：1
//  订阅者2：1
//  订阅者1：2
//  订阅者2：2
//  订阅者1：3
//  订阅者2：3
//  订阅者1：4
//  订阅者2：4

  //==================

  // 之前的广播收不到
  var streamController = StreamController.broadcast();
  //发送1
  streamController.add("1");
  streamController.stream.listen((i) {
    print("广播：" + i);
  });
//  streamController.add("22"); //收到
  streamController.close();

  //==================
  broadcastStream.listen((i) {
    print("转换的广播：${i}");
  });
}
