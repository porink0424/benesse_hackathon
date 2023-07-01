import 'package:benesse_hackathon/constants/route.dart';
import 'package:flutter/material.dart';

class Mypage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
          'Mypage',
          textDirection: TextDirection.ltr,
        )),
        body: Column(
          children: [
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
            TextButton(
              child: Text(
                'Go to ${ROUTE.MEASURE_START}',
                textDirection: TextDirection.ltr,
              ),
              onPressed: () {
                Navigator.pushNamed(context, ROUTE.MEASURE_START);
              },
            ),
          ],
        ));
  }
}
