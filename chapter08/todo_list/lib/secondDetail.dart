import 'package:flutter/material.dart';

class SecondDetail extends StatefulWidget {
  const SecondDetail({Key? key}) : super(key: key);

  @override
  _SecondDetailState createState() => _SecondDetailState();
}

class _SecondDetailState extends State<SecondDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Detail Example')),
      body: Container(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/third');
            },
            child: const Text('두 번째 페이지로 돌아가기'),
          ),
        ),
      ),
    );
  }
}
