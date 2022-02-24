import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class FileApp extends StatefulWidget {
  const FileApp({Key? key}) : super(key: key);

  @override
  _FileAppState createState() => _FileAppState();
}

class _FileAppState extends State<FileApp> {
  int _count = 0;

  _writeCountFile(int count) async {
    // getApplicationDocumentsDirectory()를 통해 내부 저장소의 경로 읽기
    var dir = await getApplicationDocumentsDirectory();
    File(dir.path + '/count.txt').writeAsStringSync(count.toString());
  }

  _readCountFile() async {
    try {
      var dir = await getApplicationDocumentsDirectory();
      var file = await File(dir.path + '/count.txt').readAsString();
      print(file);
      setState(() {
        _count = int.parse(file);
      });
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  void initState() {
    super.initState();
    _readCountFile();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('File Example'),
      ),
      body: Container(
        child: Center(
          child: Text(
            '$_count',
            style: const TextStyle(fontSize: 40),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _count++;
          });
          _writeCountFile(_count);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
