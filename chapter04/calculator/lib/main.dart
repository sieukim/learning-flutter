import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const String _title = 'Widget Example';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: _title, home: WidgetApp());
  }
}

class WidgetApp extends StatefulWidget {
  const WidgetApp({Key? key}) : super(key: key);

  @override
  _WidgetAppState createState() => _WidgetAppState();
}

class _WidgetAppState extends State<WidgetApp> {
  // 합
  var sum = '';

  // TextField Controller
  // TextField 내 값을 controller.value.text를 통해 가져올 옴
  var value1 = TextEditingController();
  var value2 = TextEditingController();

  // ElevatedButton onPressed 핸들러
  onPressed() {
    // setState를 통해 상태를 갱신
    setState(() {
      var a = int.parse(value1.value.text);
      var b = int.parse(value2.value.text);

      if (_buttonText == '더하기') sum = '${a + b}';
      if (_buttonText == '빼기') sum = '${a - b}';
      if (_buttonText == '곱하기') sum = '${a * b}';
      if (_buttonText == '나누기') sum = '${a / b}';
    });
  }

  // DropdownButton 내 버튼 리스트
  final _buttonList = ['더하기', '빼기', '곱하기', '나누기'];

  // DropdownButton 내 표시할 아이템 목록
  final _dropDownMenuItems = <DropdownMenuItem<String>>[];

  String? _buttonText = '';

  // DropdownButton onChanged 핸들러
  onChanged(dynamic value) {
    setState(() {
      _buttonText = value;
    });
  }

  @override
  void initState() {
    super.initState();
    for (var item in _buttonList) {
      _dropDownMenuItems.add(DropdownMenuItem(child: Text(item), value: item));
    }
    // 초기값지정
    _buttonText = _dropDownMenuItems[0].value!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Widget Example'),
        ),
        body: Container(
          child: Center(
              child: Column(
            children: <Widget>[
              Padding(
                // EdgeInsets.all 옵션을 통해 모든 방향에 padding 지정
                padding: const EdgeInsets.all(15),
                child: Text(
                  '결과: $sum',
                  style: const TextStyle(fontSize: 20),
                ),
              ),
              Padding(
                // EdgeInsets.only 옵션을 통해 left, right, top, bottom 각각에 padding 지정
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                    // 사용자에게 보일 키보드 타입 지정
                    keyboardType: TextInputType.number,
                    controller: value1),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                // EdgeInsets.only 옵션을 통해 left, right, top, bottom 각각에 padding 지정
                child: TextField(
                    keyboardType: TextInputType.number, controller: value2),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: ElevatedButton(
                    onPressed: onPressed,
                    child: Row(
                      children: <Widget>[const Icon(Icons.add), Text(_buttonText!)],
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.amber))),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: DropdownButton(items: _dropDownMenuItems, onChanged: onChanged, value: _buttonText),
              )
            ],
          )),
        ));
  }
}
