import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material Flutter App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MaterialFlutterApp(),
    );
  }
}

class MaterialFlutterApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MaterialFlutterApp();
  }
}

class _MaterialFlutterApp extends State<MaterialFlutterApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material Design App'),
      ),
      floatingActionButton:
          FloatingActionButton(child: const Icon(Icons.add), onPressed: () {}),
      body: Container(
        child: Center(
          // 가로 중앙 정렬
          child: Column(
            children: const <Widget>[Icon(Icons.apple), Text('iOS')],
            mainAxisAlignment: MainAxisAlignment.center, // 세로 중앙 정렬
          ),
        ),
      ),
    );
  }
}
