import 'package:benesse_hackathon/constants/route.dart';
import 'package:flutter/material.dart';

class MeasureStart extends StatefulWidget {
  @override
  _MeasureStartState createState() => _MeasureStartState();
}

class _MeasureStartState extends State<MeasureStart> {
  List<bool> _isActive = [false, false, false, false, false];

  void _toggleIsActive(int index) {
    setState(() {
      _isActive[index] = !_isActive[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'Timer',
        textDirection: TextDirection.ltr,
      )),
      backgroundColor: const Color(0xFFFFF8E1),
      body: Center(
        child: Container(
          height: 200,
          child: Column(children: [
            Container(
              child: Row(
                children: [
                  ["国", Colors.red, Colors.red[50]],
                  ["社", Colors.orange, Colors.orange[50]],
                  ["英", Colors.yellow, Colors.yellow[50]],
                  ["理", Colors.green, Colors.green[50]],
                  ["数", Colors.blue, Colors.blue[50]],
                ].asMap().entries.map((entry) {
                  return Container(
                      child: TextButton(
                        onPressed: () {
                          _toggleIsActive(entry.key);
                        },
                        style: TextButton.styleFrom(
                            backgroundColor: _isActive[entry.key]
                                ? entry.value[1] as Color
                                : entry.value[2] as Color,
                            shape: CircleBorder()),
                        child: Text(
                          "${entry.value[0]}",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                      ),
                      width: deviceWidth / 5);
                }).toList(),
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
