import 'package:flutter/material.dart';

import './animalItem.dart';
import './cupertinoMain.dart';
import './firstPage.dart';
import './secondPage.dart';

void main() {
  runApp(const CupertinoMain());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// with SingleTickerProviderStateMixin 을 통해 애니메이션 동작이 가능게 함
class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  // Tab controller
  TabController? controller;

  // 동물 리스트
  List<Animal> animalList = List.empty(growable: true);

  @override
  void initState() {
    super.initState();
    // length: 탭의 개수 vsync: 탭이 이동했을 때 호출되는 콜백 함수 처리 위치
    controller = TabController(length: 2, vsync: this);

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
    return Scaffold(
      appBar: AppBar(title: const Text('ListView Example')),
      body: TabBarView(
        children: <Widget>[
          FirstPage(animalList: animalList),
          SecondPage(animalList: animalList)
        ],
        controller: controller,
      ),
      bottomNavigationBar: TabBar(
        tabs: const <Tab>[
          Tab(icon: Icon(Icons.looks_one, color: Colors.blue)),
          Tab(icon: Icon(Icons.looks_two, color: Colors.blue))
        ],
        controller: controller,
      ),
    );
  }

  // Tab controller는 애니메이션을 사용하므로 메모리 누수 방지를 위해 dispose()를 호출
  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }
}
