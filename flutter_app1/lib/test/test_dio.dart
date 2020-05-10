

import 'dart:core' as prefix0;
import 'dart:core';

import 'package:dio/dio.dart';

void main()async { //异步

  var dio = new Dio();
  //变成同步
   Response response =  await dio.get("https://www.wanandroid.com/banner/json");
  //data 是范型，任意类型
   print(response.data);
   print(response.data.runtimeType); //_InternalLinkedHashMap<String, dynamic> DIO 自动转换的
   print(response.statusCode);
}