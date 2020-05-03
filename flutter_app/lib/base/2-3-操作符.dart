import 'package:flutter/cupertino.dart';

void main(){

  num j = 1;

  // 1、数据类型转换，不支持java的强制转化:（int）
  int i = j as int;


  //2、数据类型判断,没有java的instantof,需要使用is
  Object i1 = 1;
  if(i1 is int){

  }

//  if(i1 instantof int)
  if(i1 is! int){ // is!不属于数据类型，不等于

  }



  //3、赋值操作符
  var k;
  if(null==k){

  }
  // ??= 安全赋值，如果k有值，这个语句不存在，没值就 赋值为123
  k??="456";
  print(k);


  //4、条件表达式
  //
  k= null;
  var v = k??"789"; //k为空赋值给v
  print(v);

  //5、级联操作符-> java 的链式调用
  new Builder()..a()..b();


  //6、安全操作符
  String str;
  print(str?.length);  // 无值得时候就返回null，不会抛出空指针~~~





}

class Builder{

  void a(){}

  void b(){}
}