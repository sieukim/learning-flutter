import 'package:flutter/cupertino.dart';

import './animalItem.dart';

class CupertinoFirstPage extends StatelessWidget {
  const CupertinoFirstPage({Key? key, required this.animalList})
      : super(key: key);

  final List<Animal> animalList;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.all(5),
            height: 100,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Image.asset(
                      animalList[index].imagePath!,
                      fit: BoxFit.contain,
                      width: 80,
                      height: 80,
                    ),
                    Text(animalList[index].animalName!)
                  ],
                ),
                Container(height: 2, color: CupertinoColors.black)
              ],
            ),
          );
        },
        itemCount: animalList.length,
      ),
      navigationBar: const CupertinoNavigationBar(
        middle: Text('동물 리스트'),
      ),
    );
  }
}
