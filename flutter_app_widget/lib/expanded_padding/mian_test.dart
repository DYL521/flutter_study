import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

//    return IconContainer(Icons.home);
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                height: 200,
                width: 200,
                color: Colors.blueGrey,
                child: Text("xxxx"),
              ),
            )
          ],
        ),
        SizedBox(height: 0,),
        Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child: Image.network(
                      "https://www.itying.com/images/flutter/2.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 10, 10),
                        child: Image.network(
                          "https://www.itying.com/images/flutter/2.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                        child: Image.network(
                          "https://www.itying.com/images/flutter/2.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )),
      ],
    );
    Row(
      children: <Widget>[
        Image.network(
          "https://www.itying.com/images/flutter/2.png",
        ), // BoxFit.
        Image.network(
          "https://www.itying.com/images/flutter/2.png",
        ),
        Image.network(
          "https://www.itying.com/images/flutter/2.png",
        ),
      ],
    );
  }
}
