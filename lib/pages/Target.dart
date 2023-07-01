import 'package:benesse_hackathon/constants/route.dart';
import 'package:flutter/material.dart';

class Target extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
          'Target',
          textDirection: TextDirection.ltr,
        )),
        body: Column(
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
            TextButton(
              child: Text(
                'Go to ${ROUTE.PARAMETER}',
                textDirection: TextDirection.ltr,
              ),
              onPressed: () {
                Navigator.pushNamed(context, ROUTE.PARAMETER);
              },
            ),
            TextButton(
              child: Text(
                'Go to ${ROUTE.RANKING}',
                textDirection: TextDirection.ltr,
              ),
              onPressed: () {
                Navigator.pushNamed(context, ROUTE.RANKING);
              },
            ),
          ],
        ));
  }
}
