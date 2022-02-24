import 'package:flutter/material.dart';

class SubDetail extends StatefulWidget {
  const SubDetail({Key? key}) : super(key: key);

  @override
  _SubDetailState createState() => _SubDetailState();
}

class _SubDetailState extends State<SubDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sub Detail Example')),
      body: Container(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/second');
            },
            child: const Text('두 번째 페이지로 이동하기'),
          ),
        ),
      ),
    );
  }
}
