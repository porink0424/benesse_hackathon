//以下のサイトを参考に開発を行った
/*Flutterでシンプルなストップウォッチを作った
* https://zenn.dev/7q1q/articles/f8a1882321ee4c */

import 'package:flutter/material.dart';
import 'dart:async';

class StopWatchModel extends ChangeNotifier {
  bool isStopPressed = true;
  bool isResetPressed = true;
  bool isStartPressed = true;

  String stopWatchTimeDisplay = '00:00:00';
  // Stopwatch型を指定
  Stopwatch swatch = Stopwatch();
  final dul = const Duration(milliseconds: 10);

  void startTimer() {
    Timer(dul, keepRunning);
  }

  void keepRunning() {
    if (swatch.isRunning) {
      startTimer();
    }
    int milliSeconds = ((swatch.elapsedMilliseconds / 10).floor() % 100);
    this.stopWatchTimeDisplay =
        (swatch.elapsed.inHours).toString().padLeft(2, '0') +
            ':' +
            (swatch.elapsed.inMinutes % 60).toString().padLeft(2, '0') +
            ':' +
            (swatch.elapsed.inSeconds % 60).toString().padLeft(2, '0');
    notifyListeners();
  }

  startStopWatch() {
    this.isStopPressed = false;
    this.isStartPressed = false;
    this.isResetPressed = false;

    swatch.start();
    startTimer();
    notifyListeners();
  }

  stopStopWatch() {
    this.isStopPressed = true;
    this.isResetPressed = false;
    this.isStartPressed = true;

    swatch.stop();
    notifyListeners();
  }

}
