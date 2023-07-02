import 'package:benesse_hackathon/constants/route.dart';
import 'package:flutter/material.dart';

//Topページのdartファイル
class Top extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //　描画のために画面の大きさを把握
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      //ワンタップで次へ
      //ロゴとTap to startを並べて表示
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          // TODO: signin, signupを実装したらそちらに飛ばすようにする
          Navigator.pushNamed(context, ROUTE.LOGIN);
        },
        //ボタンとテキストを縦に並べて表示
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                margin: EdgeInsets.all(45),
                child: Center(
                  child: Image.asset('images/main_logo.png'),
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
    );
  }
}
