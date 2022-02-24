import 'package:flutter/material.dart';
import 'package:todo_list/secondDetail.dart';
import 'package:todo_list/subDetail.dart';
import 'package:todo_list/thirdDetail.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Widget Example', initialRoute: '/', routes: {
      '/': (context) => const SubDetail(),
      '/second': (context) => const SecondDetail(),
      '/third': (context) => const ThirdDetail(),
    });
  }
}
