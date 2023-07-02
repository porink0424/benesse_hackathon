import 'package:benesse_hackathon/constants/route.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Log in calendar'),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 80,
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
                Text(
                  '37日目',
                  // textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 60,
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
                Text(
                  '52日目',
                  // textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 60,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, ROUTE.MYPAGE);
            },
            child: Text("Tap to next"),
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 30),
              foregroundColor: Colors.blue, // foreground
              fixedSize: Size(200, 100),
              alignment: Alignment.topCenter,
            )),
        ],
      ),
    );
  }
}
