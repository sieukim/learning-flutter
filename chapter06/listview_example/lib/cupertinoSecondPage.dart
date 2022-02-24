import 'package:flutter/cupertino.dart';

import './animalItem.dart';

class CupertinoSecondPage extends StatefulWidget {
  final List<Animal>? animalList;

  const CupertinoSecondPage({Key? key, required this.animalList})
      : super(key: key);

  @override
  _CupertinoSecondPageState createState() => _CupertinoSecondPageState();
}

class _CupertinoSecondPageState extends State<CupertinoSecondPage> {
  TextEditingController? _textEditingController;
  int _kindChoice = 0;
  bool _flyExist = false;
  String? _imagePath;

  Map<int, Widget> segmentWidgets = {
    0: const SizedBox(
      child: Text('양서류', textAlign: TextAlign.center),
      width: 80,
    ),
    1: const SizedBox(
      child: Text('포유류', textAlign: TextAlign.center),
      width: 80,
    ),
    2: const SizedBox(
      child: Text('파충류', textAlign: TextAlign.center),
      width: 80,
    ),
  };

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: null,
      navigationBar: const CupertinoNavigationBar(middle: Text('동물 추가')),
    );
  }
}
