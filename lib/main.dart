import 'package:benesse_hackathon/pages/Login.dart';
import 'package:benesse_hackathon/pages/Measure.dart';
import 'package:benesse_hackathon/pages/MeasureEnd.dart';
import 'package:benesse_hackathon/pages/MeasureStart.dart';
import 'package:benesse_hackathon/pages/Mypage.dart';
import 'package:benesse_hackathon/pages/Parameter.dart';
import 'package:benesse_hackathon/pages/Ranking.dart';
import 'package:benesse_hackathon/pages/Signin.dart';
import 'package:benesse_hackathon/pages/Signup.dart';
import 'package:benesse_hackathon/pages/Target.dart';
import 'package:benesse_hackathon/pages/Top.dart';
import 'package:benesse_hackathon/constants/route.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Top",
      routes: {
        ROUTE.TOP: (context) => Top(),
        ROUTE.SIGNIN: (context) => Signin(),
        ROUTE.SIGNUP: (context) => Signup(),
        ROUTE.LOGIN: (context) => Login(),
        ROUTE.MYPAGE: (context) => Mypage(),
        ROUTE.TARGET: (context) => Target(),
        ROUTE.PARAMETER: (context) => Parameter(),
        ROUTE.RANKING: (context) => Ranking(),
        ROUTE.MEASURE_START: (context) => MeasureStart(),
        ROUTE.MEASURE: (context) => Measure(),
        ROUTE.MEASURE_END: (context) => MeasureEnd(),
      },
    );
  }
}
