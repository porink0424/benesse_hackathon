import 'package:benesse_hackathon/constants/route.dart';
import 'package:flutter/material.dart';

class Parameter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
          'Parameter',
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
                'Go to ${ROUTE.TARGET}',
                textDirection: TextDirection.ltr,
              ),
              onPressed: () {
                Navigator.pushNamed(context, ROUTE.TARGET);
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
