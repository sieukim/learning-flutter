import 'package:flutter/material.dart';

import './animalItem.dart';

class FirstPage extends StatelessWidget {
  // animalItem.dart 내 animalList의 데이터를 받아올건데
  // FirstPage 객체 생성시에도 해당 목록이 있어야 하므로 final로 선언한다.
  final List<Animal>? animalList;

  // animalList를 생성자에 추가
  const FirstPage({Key? key, this.animalList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, position) {
            return Card(
                child: Row(
              children: <Widget>[
                Image.asset(
                  animalList![position].imagePath!,
                  height: 100,
                  width: 100,
                  fit: BoxFit.contain,
                ),
                Text(animalList![position].animalName!)
              ],
            ));
          },
          // 아이템 개수만큼만 스크롤할 수 있도록 제한
          itemCount: animalList!.length,
        ),
      ),
    );
  }
}
