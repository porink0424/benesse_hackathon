import 'package:benesse_hackathon/constants/route.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
          'Login',
          textDirection: TextDirection.ltr,
        )),
        body: Row(
          children: [
            TextButton(
              child: Text(
                'Go to ${ROUTE.MYPAGE}',
                textDirection: TextDirection.ltr,
              ),
              onPressed: () {
                Navigator.pushNamed(context, ROUTE.MYPAGE);
              },
            ),
          ],
        ));
  }
}
