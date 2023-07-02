//以下のサイトを参考に開発を行った
/*Flutterでシンプルなストップウォッチを作った
* https://zenn.dev/7q1q/articles/f8a1882321ee4c */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/stop_watch_model.dart';

class Measure extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'provider demo', home: _ProviderWidget());
  }
}

class _ProviderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<StopWatchModel>(
          create: (context) => StopWatchModel(),
        )
      ],
      child: _MainPageBody(),
    );
  }
}

class _MainPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //　描画のために画面の大きさを把握
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    final stopWatchModel = Provider.of<StopWatchModel>(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Timer',
          style: TextStyle(fontSize: deviceWidth / 30),
        ),
      ),
      // 再描画したい箇所だけConsumerで囲む
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    backgroundColor: Colors.red, shape: CircleBorder()),
                child: Text(
                  '国',
                  textDirection: TextDirection.ltr,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            Consumer<StopWatchModel>(
                builder: (context, model, _) => Text(
                      model.stopWatchTimeDisplay,
                      style: Theme.of(context).textTheme.displayMedium,
                    )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: stopWatchModel.isStartPressed
                        ? stopWatchModel.startStopWatch
                        : null,
                    child: Text('開始')),
                SizedBox(
                  width: deviceWidth / 15,
                ),
                ElevatedButton(
                    onPressed: stopWatchModel.isStopPressed
                        ? null
                        : stopWatchModel.stopStopWatch,
                    child: Text('休憩')),
                SizedBox(width: deviceWidth / 15),
                ElevatedButton(
                  onPressed: () {
                    //ここに次のページに行く操作
                  },
                  child: Text(
                    'おしまい',
                    textDirection: TextDirection.ltr,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
