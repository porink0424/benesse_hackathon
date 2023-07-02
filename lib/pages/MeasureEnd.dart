import 'package:benesse_hackathon/constants/route.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Time"),
        ),
        body: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            //ここに遷移を記述
          },
          child: Center(
            child: Image.asset('images/finish_page.png'),
          ),
        ),
      ),
    );
  }
}
