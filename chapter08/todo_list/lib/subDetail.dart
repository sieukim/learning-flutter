import 'package:flutter/material.dart';

class SubDetail extends StatefulWidget {
  const SubDetail({Key? key}) : super(key: key);

  @override
  _SubDetailState createState() => _SubDetailState();
}

class _SubDetailState extends State<SubDetail> {
  List<String> todoList = List.empty(growable: true);

  @override
  void initState() {
    super.initState();
    todoList.add('감사 사오기');
    todoList.add('감자 찌기');
    todoList.add('감자 먹기');
    todoList.add('정리하기');
  }

  // 두 번째 페이지로 이동하고 이때 반환하는 값을 저장해 todoList에 추가하는 함수
  // 데이터를 받은 후 처리해야 하므로 비동기~!~!!!
  void _addNavigation(BuildContext context) async {
    final result = await Navigator.of(context).pushNamed('/second');
    setState(() {
      todoList.add(result as String);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sub Detail Example')),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: InkWell(
              child: Text(
                todoList[index],
                style: const TextStyle(fontSize: 30),
              ),
              onTap: () {
                // arguments 인자를 통해 데이터 전달
                Navigator.of(context)
                    .pushNamed('/third', arguments: todoList[index]);
              },
            ),
          );
        },
        itemCount: todoList.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _addNavigation(context);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
