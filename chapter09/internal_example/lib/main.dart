import 'package:flutter/material.dart';

// 데이터를 공유 환경설정에 저장하기 위한 클래스 SharedPreferences
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  // 데이터 저장 함수
  void _setData(int value) async {
    var key = 'count';
    SharedPreferences preferences = await SharedPreferences.getInstance();
    // setter
    preferences.setInt(key, value);
  }

  // 데이터 가져오는 함수
  void _loadData() async {
    var key = 'count';
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      // getter
      var value = preferences.getInt(key);
      _counter = value ?? 0;
    });
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
      _setData(_counter);
    });
  }

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
