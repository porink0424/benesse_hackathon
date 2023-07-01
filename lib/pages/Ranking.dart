import 'package:benesse_hackathon/constants/route.dart';
import 'package:benesse_hackathon/data/Ranking.dart';
import 'package:flutter/material.dart';

dynamic getColorByRank(int rank) {
  switch (rank) {
    case 0:
      return Colors.yellow[400];
    case 1:
      return Colors.blueGrey[100];
    case 2:
      return Colors.deepOrange[300];
    default:
      return Colors.lightBlue;
  }
}

double getHeightByRank(int rank) {
  switch (rank) {
    case 0:
      return 100.0;
    case 1:
      return 80.0;
    case 2:
      return 70.0;
    default:
      return 60.0;
  }
}

class RankingAll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            margin: const EdgeInsets.only(top: 30.0),
            child: Column(children: [
              const Text(
                "全世界でのランキング",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
              ),
              const Divider(
                color: Colors.grey,
                thickness: 1,
                indent: 20,
                endIndent: 20,
                height: 50,
              ),
              const Text(
                "自分の順位",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(
                width: double.infinity,
                height: getHeightByRank(RANKING.MY_INDEX_IN_ALL),
                child: Card(
                  color: getColorByRank(RANKING.MY_INDEX_IN_ALL),
                  margin: const EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
                  child: Row(
                    children: [
                      Text(
                        // TODO: spaceで調整してしまっているので時間があれば修正
                        "   ${RANKING.MY_INDEX_IN_ALL + 1}位 ${RANKING.ALL[RANKING.MY_INDEX_IN_ALL]['name']}",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                      const Spacer(),
                      Text(
                        // TODO: spaceで調整してしまっているので時間があれば修正
                        "  ${RANKING.ALL[RANKING.MY_INDEX_IN_ALL]['exp']}   ",
                        style: const TextStyle(fontSize: 18.0),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(
                color: Colors.grey,
                thickness: 1,
                indent: 20,
                endIndent: 20,
                height: 50,
              ),
              const Text(
                "ランキング",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              ...(RANKING.ALL.asMap().entries.map((entry) {
                return SizedBox(
                  width: double.infinity,
                  height: getHeightByRank(entry.key),
                  child: Card(
                    color: getColorByRank(entry.key),
                    margin: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
                    shape: (entry.key != RANKING.MY_INDEX_IN_ALL)
                        ? null
                        : const RoundedRectangleBorder(
                            side: BorderSide(color: Colors.red, width: 8),
                          ),
                    child: Row(
                      children: [
                        Text(
                          // TODO: spaceで調整してしまっているので時間があれば修正
                          "   ${entry.key + 1}位 ${entry.value['name']}",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.0),
                        ),
                        const Spacer(),
                        Text(
                          // TODO: spaceで調整してしまっているので時間があれば修正
                          "  ${entry.value['exp']}   ",
                          style: const TextStyle(fontSize: 18.0),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList())
            ])));
  }
}

class RankingBySchool extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            margin: const EdgeInsets.only(top: 30.0),
            child: Column(children: [
              const Text(
                "志望校別ランキング",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
              ),
              const Divider(
                color: Colors.grey,
                thickness: 1,
                indent: 20,
                endIndent: 20,
                height: 50,
              ),
              const Text(
                "自分の順位",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(
                width: double.infinity,
                height: getHeightByRank(RANKING.MY_INDEX_IN_SCHOOL),
                child: Card(
                  color: getColorByRank(RANKING.MY_INDEX_IN_SCHOOL),
                  margin: const EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
                  child: Row(
                    children: [
                      Text(
                        // TODO: spaceで調整してしまっているので時間があれば修正
                        "   ${RANKING.MY_INDEX_IN_SCHOOL + 1}位 ${RANKING.SCHOOL[RANKING.MY_INDEX_IN_SCHOOL]['name']}",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                      const Spacer(),
                      Text(
                        // TODO: spaceで調整してしまっているので時間があれば修正
                        "  ${RANKING.SCHOOL[RANKING.MY_INDEX_IN_SCHOOL]['exp']}   ",
                        style: const TextStyle(fontSize: 18.0),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(
                color: Colors.grey,
                thickness: 1,
                indent: 20,
                endIndent: 20,
                height: 50,
              ),
              const Text(
                "ランキング",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              ...(RANKING.SCHOOL.asMap().entries.map((entry) {
                return SizedBox(
                  width: double.infinity,
                  height: getHeightByRank(entry.key),
                  child: Card(
                    color: getColorByRank(entry.key),
                    margin: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
                    shape: (entry.key != RANKING.MY_INDEX_IN_SCHOOL)
                        ? null
                        : const RoundedRectangleBorder(
                            side: BorderSide(color: Colors.red, width: 8),
                          ),
                    child: Row(
                      children: [
                        Text(
                          // TODO: spaceで調整してしまっているので時間があれば修正
                          "   ${entry.key + 1}位 ${entry.value['name']}",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.0),
                        ),
                        const Spacer(),
                        Text(
                          // TODO: spaceで調整してしまっているので時間があれば修正
                          "  ${entry.value['exp']}   ",
                          style: const TextStyle(fontSize: 18.0),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList())
            ])));
  }
}

class RankingByFriends extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            margin: const EdgeInsets.only(top: 30.0),
            child: Column(children: [
              const Text(
                "フレンド内ランキング",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
              ),
              const Divider(
                color: Colors.grey,
                thickness: 1,
                indent: 20,
                endIndent: 20,
                height: 50,
              ),
              const Text(
                "自分の順位",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(
                width: double.infinity,
                height: getHeightByRank(RANKING.MY_INDEX_IN_FRIENDS),
                child: Card(
                  color: getColorByRank(RANKING.MY_INDEX_IN_FRIENDS),
                  margin: const EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
                  child: Row(
                    children: [
                      Text(
                        // TODO: spaceで調整してしまっているので時間があれば修正
                        "   ${RANKING.MY_INDEX_IN_FRIENDS + 1}位 ${RANKING.FRIENDS[RANKING.MY_INDEX_IN_FRIENDS]['name']}",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                      const Spacer(),
                      Text(
                        // TODO: spaceで調整してしまっているので時間があれば修正
                        "  ${RANKING.FRIENDS[RANKING.MY_INDEX_IN_FRIENDS]['exp']}   ",
                        style: const TextStyle(fontSize: 18.0),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(
                color: Colors.grey,
                thickness: 1,
                indent: 20,
                endIndent: 20,
                height: 50,
              ),
              const Text(
                "ランキング",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              ...(RANKING.FRIENDS.asMap().entries.map((entry) {
                return SizedBox(
                  width: double.infinity,
                  height: getHeightByRank(entry.key),
                  child: Card(
                    color: getColorByRank(entry.key),
                    margin: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
                    shape: (entry.key != RANKING.MY_INDEX_IN_FRIENDS)
                        ? null
                        : const RoundedRectangleBorder(
                            side: BorderSide(color: Colors.red, width: 8),
                          ),
                    child: Row(
                      children: [
                        Text(
                          // TODO: spaceで調整してしまっているので時間があれば修正
                          "   ${entry.key + 1}位 ${entry.value['name']}",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.0),
                        ),
                        const Spacer(),
                        Text(
                          // TODO: spaceで調整してしまっているので時間があれば修正
                          "  ${entry.value['exp']}   ",
                          style: const TextStyle(fontSize: 18.0),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList())
            ])));
  }
}

class Ranking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'Ranking',
        textDirection: TextDirection.ltr,
      )),
      body: DefaultTabController(
          length: 3,
          child: Container(
              margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 14.0),
              decoration: const BoxDecoration(
                  border: Border(
                      left: BorderSide(color: Colors.grey, width: 2.0),
                      top: BorderSide(color: Colors.grey, width: 2.0),
                      right: BorderSide(color: Colors.grey, width: 2.0)),
                  color: Colors.white,
                  boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 10)]),
              child: Column(
                children: [
                  const TabBar(tabs: [
                    Tab(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ImageIcon(
                          AssetImage("images/earth.png"),
                          color: Colors.black,
                        ),
                        Text(
                          "全世界",
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    )),
                    Tab(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ImageIcon(
                          AssetImage("images/school.png"),
                          color: Colors.black,
                        ),
                        Text(
                          "志望校別",
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    )),
                    Tab(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ImageIcon(
                          AssetImage("images/friends.png"),
                          color: Colors.black,
                        ),
                        Text(
                          "フレンド",
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    )),
                  ]),
                  Expanded(
                    child: TabBarView(children: [
                      RankingAll(),
                      RankingBySchool(),
                      RankingByFriends(),
                    ]),
                  )
                ],
              ))),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 0,
          onTap: (int index) {
            switch (index) {
              case 0:
                Navigator.pushNamed(context, ROUTE.RANKING);
                break;
              case 1:
                Navigator.pushNamed(context, ROUTE.TARGET);
                break;
              case 2:
                Navigator.pushNamed(context, ROUTE.PARAMETER);
                break;
              case 3:
                Navigator.pushNamed(context, ROUTE.MYPAGE);
                break;
            }
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("images/ranking.png"),
                  size: 50.0,
                ),
                label: "Ranking"),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("images/target.png"),
                  size: 50.0,
                ),
                label: "Target"),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("images/parameter.png"),
                  size: 50.0,
                ),
                label: "Parameter"),
            // TODO: MyPageのアイコン画像
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("images/parameter.png"),
                  size: 50.0,
                ),
                label: "MyPage"),
          ]),
    );
  }
}
