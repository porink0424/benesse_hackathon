import 'package:benesse_hackathon/constants/route.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Log in calendar'),
      ),
      // backgroundColor: const Color(0xF3E9D9FF),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 60,
            margin: EdgeInsets.only(top: 20, left: 20 ,right: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black, width: 2),
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'ログイン記録',
                  // textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 160,
            margin: EdgeInsets.only(top: 20, left: 20 ,right: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black, width: 2),
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '連続ログイン記録',
                  // textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '37',
                      // textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 60,
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text(
                        '日目',
                        // textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 160,
            margin: EdgeInsets.only(top: 20, left: 20 ,right: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black, width: 2),
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '合計ログイン',

                  // textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '52',
                      // textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 60,
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text(
                        '日目',
                        // textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            // height: 10,
            margin: EdgeInsets.only(top: 20, left: 20 ,right: 20),
            child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, ROUTE.MYPAGE);
                },
                child: Text("Tap to next"),
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 30),
                  foregroundColor: Color(0xF375717A), // foreground
                  alignment: Alignment.topCenter,
                )),
          ),
        ],
      ),
    );
  }
}
