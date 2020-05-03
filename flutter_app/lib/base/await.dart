
//async 表示这是一个异步方法,await必须再async方法中使用
//异步方法只能返回 void和Future
import 'dart:io';

Future<String> readFile() async { //async 异步任务
  //await 等待future执行完成再执行后续代码 - 异步变成同步
  String content = await new File("/Users/xiang/enjoy/a.txt").readAsString(); //等待执行完，content2，
  String content2 = await new File("/Users/xiang/enjoy/a.txt").readAsString();
  //自动转换为 future
  return content;
}

void main(){


}