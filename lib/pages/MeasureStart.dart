import 'package:benesse_hackathon/constants/route.dart';
import 'package:flutter/material.dart';

class MeasureStart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
          'MeasureStart',
          textDirection: TextDirection.ltr,
        )),
        body: Row(
          children: [
            TextButton(
              child: Text(
                'Go to ${ROUTE.MEASURE}',
                textDirection: TextDirection.ltr,
              ),
              onPressed: () {
                Navigator.pushNamed(context, ROUTE.MEASURE);
              },
            ),
          ],
        ));
  }
}
