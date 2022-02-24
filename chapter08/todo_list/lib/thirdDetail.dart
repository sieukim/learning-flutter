import 'package:flutter/material.dart';

class ThirdDetail extends StatelessWidget {
  const ThirdDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 전달받은 데이터 갖고오기
    final String args = ModalRoute.of(context)!.settings.arguments.toString();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Detail Example'),
      ),
      body: Container(
        child: Center(
          child: Text(
            args,
            style: const TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
