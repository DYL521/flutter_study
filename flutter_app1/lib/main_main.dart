

import 'package:flutter/material.dart';
import 'package:flutterapp1/u/page/page_article.dart';



// state的生命周期
void main() => runApp(ArticleApp());

class ArticleApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title:  new Text("文章列表",
          style: const TextStyle(color: Colors.white),),
        ),
      body: new ArticlePage(),
      ),

    );
  }
}
