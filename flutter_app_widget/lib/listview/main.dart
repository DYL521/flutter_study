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

//  动态列表 - 动态的数据 listView.builder
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(

          title: Text(listData[index]['title']),
          leading: Image.network(listData[index]['imageUrl']),
        );
      },
      itemCount: listData.length,
    );
  }
}
