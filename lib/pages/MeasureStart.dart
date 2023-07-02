import 'package:benesse_hackathon/constants/route.dart';
import 'package:flutter/material.dart';

class MeasureStart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
          title: const Text(
        '学習時間計測',
        textDirection: TextDirection.ltr,
      )),
      body: Center(
        child: Container(
          height: 200,
          child: Column(children: [
            Container(
              child: Row(
                children: [
                  Container(
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.red, shape: CircleBorder()),
                        child: Text(
                          '国',
                          textDirection: TextDirection.ltr,
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                      ),
                      width: deviceWidth / 5),
                  Container(
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.orange,
                            shape: CircleBorder()),
                        child: Text(
                          '社',
                          textDirection: TextDirection.ltr,
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                      ),
                      width: deviceWidth / 5),
                  Container(
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.yellow,
                            shape: CircleBorder()),
                        child: Text(
                          '英',
                          textDirection: TextDirection.ltr,
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                      ),
                      width: deviceWidth / 5),
                  Container(
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.green, shape: CircleBorder()),
                      child: Text(
                        '社',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                    ),
                    width: deviceWidth / 5,
                  ),
                  Container(
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.blue,
                            shape: CircleBorder()),
                        child: Text(
                          '数',
                          textDirection: TextDirection.ltr,
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                      ),
                      width: deviceWidth / 5),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 30.0),
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.teal),
                    ),
                    child: const Text(
                      '学習開始',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, ROUTE.MEASURE);
                    },
                  ),
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
