import 'package:benesse_hackathon/constants/route.dart';
import 'package:flutter/material.dart';

class Measure extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
          'Measure',
          textDirection: TextDirection.ltr,
        )),
        body: Row(
          children: [
            TextButton(
              child: Text(
                'Go to ${ROUTE.MEASURE_END}',
                textDirection: TextDirection.ltr,
              ),
              onPressed: () {
                Navigator.pushNamed(context, ROUTE.MEASURE_END);
              },
            ),
          ],
        ));
  }
}
