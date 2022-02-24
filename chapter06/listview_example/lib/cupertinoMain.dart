import 'package:flutter/cupertino.dart';
import 'package:listview_example/cupertinoFirstPage.dart';

import './animalItem.dart';

class CupertinoMain extends StatefulWidget {
  const CupertinoMain({Key? key}) : super(key: key);

  @override
  _CupertinoMainState createState() => _CupertinoMainState();
}

class _CupertinoMainState extends State<CupertinoMain> {
  CupertinoTabBar? tabBar;

  // 동물 리스트
  List<Animal> animalList = List.empty(growable: true);

  @override
  void initState() {
    super.initState();
    tabBar = CupertinoTabBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.home)),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.add)),
      ],
    );

    // 동물 리스트에 동물 객체 추가
    Animal bee =
        Animal(animalName: '벌', kind: '곤충', imagePath: 'images/bee.png');
    Animal cat =
        Animal(animalName: '고양이', kind: '포유류', imagePath: 'images/cat.png');
    Animal cow =
        Animal(animalName: '젖소', kind: '포유류', imagePath: 'images/cow.png');
    Animal dog =
        Animal(animalName: '강아지', kind: '포유류', imagePath: 'images/dog.png');
    Animal fox =
        Animal(animalName: '여우', kind: '포유류', imagePath: 'images/fox.png');
    Animal monkey =
        Animal(animalName: '원숭이', kind: '영장류', imagePath: 'images/monkey.png');
    Animal pig =
        Animal(animalName: '돼지', kind: '포유류', imagePath: 'images/pig.png');
    Animal wolf =
        Animal(animalName: '늑대', kind: '포유류', imagePath: 'images/wolf.png');

    animalList.add(bee);
    animalList.add(cat);
    animalList.add(cow);
    animalList.add(dog);
    animalList.add(fox);
    animalList.add(monkey);
    animalList.add(pig);
    animalList.add(wolf);
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoTabScaffold(
        tabBar: tabBar!,
        tabBuilder: (context, value) {
          if (value == 0) {
            return CupertinoFirstPage(animalList: animalList);
          } else {
            return Container(
                child: const Center(child: Text('cupertino Tab 2')));
          }
        },
      ),
    );
  }
}
