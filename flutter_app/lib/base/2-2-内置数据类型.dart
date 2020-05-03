// 7 - 大内置数据类型
import 'package:flutter/services.dart';

void main() {
  //1、数值类型: num

  //int 都是要看编译成哪个平台上的代码，来决定是多少字节
  // 范围:  -2^53 and 2^53
  // Dart 的int，在编码的时候可以将int当成java的int、Long来使用
  // 如果我们写Dart代码超过4个字节，那么Dart会将其编译成类似java的long类型；否者编译成java的short或者int
  int i = 10;
  print(i.bitLength); // i的二进制制长度； 10 的二进制是:1010 4位

  //Dat中int 不是基本数据类似，是一个对象，对象！！

  //2、字符串类型:String
  String str = "大傻子";
  int num = 11;

  // java,格式化字符串
//  String txt = str +"xxx"+num;
//  String format = String.format("%s%d",str,i);

  //但是Dart中，更加简单
  String txt = "$str$num拼接在一起啦~~~";
  String txt2 = "${str}SSSS$num拼接在一起啦~~~"; //{} 标记变量
  print(txt);
  print(txt2);

  //2-2 可以使用单引号、或者双引号
  String s = "今天好好打";
  String ss1 = "\"1212312312312\""; //java
  print(ss1);

  //Dart中
  String ss2 = "'text12312'"; //得到想要的引号包裹的字符串~~
  print(ss2);

  //r 前缀 raw:原始
  String ss4 = r"\n"; //输出\n字符串
  print(ss4);

  // 多行字符串声明
  String aaa = """
  我想你，想跟你在一起呢
  你是不是在像我呢
  
  """;
  print(aaa);

  //3、布尔类型: bool
  bool i123 = false;

  //4、数组类型：List
  List<String> list = new List();
  //声明的同时赋值
  List<int> list1 = [1, 2, 1, 1, 2];

  //取出数据,根据索引取出值
  int as = list1[1];

  //遍历数组:iter
  for (var o in list1) {}
  for (var j = 0; j < list.length; ++j) {
    //iter
    var o = list[j];
  }

  //
  // list对象不可变
  List<int> list2 = const [1, 2, 3, 4]; // const 编译就确定的值
//  list2.add(2); // ok

  const List<int> list3 = [1, 2, 3, 4]; // const 编译就确定的值
//  list3.add(2); //list3 是一个不可变的对象，不可以编辑！！
  // const 修饰谁，谁就不可变！！

  //5、映射集合map
  // 1、定义map
  Map<int, String> map = {1: "123"};
  print(map[1]);

  var map1 = const {1: 2, 3: 4};
  //添加元素
//  map1[3] = 100; // key -value

  // 迭代器遍历
  var keys = map1.keys;
//  print(map1);

  //6、Runes :特殊字符表示类： Unicode32【字符编码】

  var clapping = '\u{1f44f}';

  ///5个16进制 需要使用{}
  print(clapping); //👏
//获得 16位代码单元
  print(clapping.codeUnits); //[55357, 56399]
//获得unicode代码
  print(clapping.runes.toList()); //[128079]

//fromCharCode 根据字符码创建字符串
  print(String.fromCharCode(128079));
  print(String.fromCharCodes(clapping.runes));
  print(String.fromCharCodes([55357, 56399]));
  print(String.fromCharCode(0x1f44f));

  Runes input = new Runes(
      '\u2665  \u{1f605}  \u{1f60e}  \u{1f47b}  \u{1f596}  \u{1f44d}');
  print(String.fromCharCodes(input));

  //代码与代码单元,知识点，java

  // 7、Symbol标识符
  var a = #A;
  print(a.runtimeType); //Symbol

  switch (a) {
    case #A:
      break;
    case #B:
      break;
    default:
      break;
  }
}
