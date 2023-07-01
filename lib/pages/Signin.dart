import 'package:benesse_hackathon/constants/route.dart';
import 'package:flutter/material.dart';

class Signin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
          'Signin',
          textDirection: TextDirection.ltr,
        )),
        body: Row(
          children: [
            TextButton(
              child: Text(
                'Go to ${ROUTE.LOGIN}',
                textDirection: TextDirection.ltr,
              ),
              onPressed: () {
                Navigator.pushNamed(context, ROUTE.LOGIN);
              },
            ),
          ],
        ));
  }
}
