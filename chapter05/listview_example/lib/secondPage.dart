import 'package:flutter/material.dart';
import './animalItem.dart';

class SecondPage extends StatelessWidget {
  // animalItem.dart 내 animalList의 데이터를 받아올건데
  // SecondPage 객체 생성시에도 해당 목록이 있어야 하므로 final로 선언한다.
  final List<Animal>? animalList;
  // animalList를 생성자에 추가
  const SecondPage({Key? key, this.animalList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('두 번째 페이지'),
      ),
    );
  }
}
