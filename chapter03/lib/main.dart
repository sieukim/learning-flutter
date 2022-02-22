import 'package:flutter/material.dart';

void main() {
  // runApp(): 플러터 앱을 시작하는 역할, 플러터 앱을 시작하면서 화면에 표시할 위젯을 전달
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {
  var switchValue = false;
  String test = 'hello';
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity),
        darkTheme: ThemeData.light(),
        home: Scaffold(
          body: Center(
            child: ElevatedButton(
                child: Text('$test'),
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(_color)),
                onPressed: () {
                  if (test == 'hello') {
                    setState(() {
                      test = 'flutter';
                      _color = Colors.amber;
                    });
                  } else {
                    setState(() {
                      test = 'hello';
                      _color = Colors.blue;
                    });
                  }
                }),
          ),
        ));
  }
}