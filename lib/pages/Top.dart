import 'package:benesse_hackathon/constants/route.dart';
import 'package:flutter/material.dart';

class Top extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
          'Top',
          textDirection: TextDirection.ltr,
        )),
        body: Row(
          children: [
            TextButton(
              child: Text(
                'Go to ${ROUTE.SIGNIN}',
                textDirection: TextDirection.ltr,
              ),
              onPressed: () {
                Navigator.pushNamed(context, ROUTE.SIGNIN);
              },
            ),
            TextButton(
              child: Text(
                'Go to ${ROUTE.SIGNUP}',
                textDirection: TextDirection.ltr,
              ),
              onPressed: () {
                Navigator.pushNamed(context, ROUTE.SIGNUP);
              },
            ),
          ],
        ));
  }
}
