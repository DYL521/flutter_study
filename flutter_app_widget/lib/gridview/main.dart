import 'package:flutter/material.dart';
import 'listData.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("动态列表list")),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  Widget _getListData(context, index) {
    return Container(
      child: Column(
        children: <Widget>[
          Image.network(listData[index]["imageUrl"]),
          SizedBox(
            height: 10,
          ), //间距
          Text(
            listData[index]["title"],
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
      decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
//      crossAxisSpacing: 50.0,//水平wight的距离
//      mainAxisSpacing: 35.0, //上下
//      padding: EdgeInsets.all(10),// 边距
//      crossAxisCount: 2, //每行的数据
//      childAspectRatio: 1, //大小调整：宽/高度
//      children: this._getListData(),

    // builder 只能通过SliverGridDelegateWithFixedCrossAxisCount 来配置这些属性
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 50.0, //水平wight的距离
        mainAxisSpacing: 35.0, //上下
        crossAxisCount: 2, //每行的数据
        childAspectRatio: 1, //大小调整：宽/高度
      ),
      itemCount: listData.length,
      itemBuilder: this._getListData,
    );
  }
}
