import 'package:benesse_hackathon/constants/route.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      backgroundColor: const Color(0xFFFFF8E1),
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 200,
            margin: EdgeInsets.only(top: 20, left: 10, right: 10),
            decoration: BoxDecoration(
              color: Colors.white, // 背景色を指定
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black, width: 2),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 0.1,
                    spreadRadius: 0.1,
                    offset: Offset(3, 3))
              ],
            ),
            child: Column(
              children: [
                const Text(
                  'ベネッセ　太郎',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 20, height: 3, fontWeight: FontWeight.bold),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 10),
                      Image.asset(
                        "images/yamcha.png",
                        width: 350,
                        height: 125,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 30, left: 10),
                  height: 125,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 0.1,
                          spreadRadius: 0.1,
                          offset: Offset(3, 3))
                    ],
                  ),
                  //width: 200,
                  // テキストが2行になるように適宜調整
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      onPrimary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Colors.black, width: 2),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, ROUTE.MEASURE_START);
                    },
                    child: const Align(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '今日の学習を',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            '始める',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 30, right: 10),
                  height: 125, // テキストが2行になるように適宜調整
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Colors.black, width: 2),
                      ),
                    ),
                    onPressed: () {},
                    child: const Align(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '今週の学習時間',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            '14時間',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  height: 125, // テキストが2行になるように適宜調整
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Colors.black, width: 2),
                      ),
                    ),
                    onPressed: () {},
                    child: const Align(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '継続ログイン日数',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            '37日',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 10),
                  height: 125, // テキストが2行になるように適宜調整
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Colors.black, width: 2),
                      ),
                    ),
                    onPressed: () {},
                    child: const Align(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '目標達成数',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            '15個',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 3,
          onTap: (int index) {
            switch (index) {
              case 0:
                Navigator.pushNamed(context, ROUTE.RANKING);
                break;
              case 1:
                Navigator.pushNamed(context, ROUTE.TARGET);
                break;
              case 2:
                Navigator.pushNamed(context, ROUTE.PARAMETER);
                break;
              case 3:
                Navigator.pushNamed(context, ROUTE.MYPAGE);
                break;
            }
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("images/ranking.png"),
                  size: 50.0,
                ),
                label: "Ranking"),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("images/target.png"),
                  size: 50.0,
                ),
                label: "Target"),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("images/parameter.png"),
                  size: 50.0,
                ),
                label: "Parameter"),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("images/home.png"),
                  size: 50.0,
                ),
                label: "MyPage"),
          ]),
    );
  }
}

class Mypage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MyHomePage(title: 'My Page');
  }
}
