import 'package:benesse_hackathon/constants/route.dart';
import 'package:flutter/material.dart';


//Topページのdartファイル
class Top extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //　描画のために画面の大きさを把握
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        //ワンタップで次へ
        //ロゴとTap to startを並べて表示
        body: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            Navigator.pushNamed(context, ROUTE.TOP);
          },
          //ボタンとテキストを縦に並べて表示
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: FractionalOffset.topCenter,
                        end: FractionalOffset.bottomCenter,
                        colors: [
                          Colors.lightBlue.shade700,
                          Colors.lightBlue.shade50
                        ],
                      ),
                      shape: BoxShape.circle),
                  height: deviceHeight / 1.55,
                  width: deviceWidth / 2,
                ),
              ),

              Align(
                alignment: Alignment.center,
                child: Container(
                  alignment: Alignment.center,
                  height: deviceHeight / 10,
                  width: deviceWidth / 2,
                  child: const Text(
                    "Tap to start",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
