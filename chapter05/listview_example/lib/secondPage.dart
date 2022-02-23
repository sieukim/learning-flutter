import 'package:flutter/material.dart';

import './animalItem.dart';

class SecondPage extends StatefulWidget {
  // animalList
  final List<Animal>? animalList;

  // animalList를 생성자에 추가
  const SecondPage({Key? key, this.animalList}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  // Textfield Controller
  final nameController = TextEditingController();

  // Radio value
  int? _radioValue = 0;

  bool? flyExist = false;
  String? _imagePath;

  // Radio onChanged 핸들러
  _radioChange(int? value) {
    setState(() {
      _radioValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: nameController,
                keyboardType: TextInputType.text,
                maxLines: 1,
              ),
              Row(
                children: <Widget>[
                  Radio(
                      value: 0,
                      groupValue: _radioValue,
                      onChanged: _radioChange),
                  const Text('양서류'),
                  Radio(
                      value: 1,
                      groupValue: _radioValue,
                      onChanged: _radioChange),
                  const Text('파충류'),
                  Radio(
                      value: 2,
                      groupValue: _radioValue,
                      onChanged: _radioChange),
                  const Text('포유류'),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceAround,
              ),
              Row(
                children: <Widget>[
                  const Text('날 수 있나요?'),
                  Checkbox(
                    value: flyExist,
                    onChanged: (bool? check) {
                      setState(() {
                        flyExist = check;
                      });
                    },
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceAround,
              ),
              Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    GestureDetector(
                      child: Image.asset('images/bee.png', width: 80),
                      onTap: () {
                        _imagePath = 'images/bee.png';
                      },
                    ),
                    GestureDetector(
                      child: Image.asset('images/cat.png', width: 80),
                      onTap: () {
                        _imagePath = 'images/cat.png';
                      },
                    ),
                    GestureDetector(
                      child: Image.asset('images/cow.png', width: 80),
                      onTap: () {
                        _imagePath = 'images/cow.png';
                      },
                    ),
                    GestureDetector(
                      child: Image.asset('images/dog.png', width: 80),
                      onTap: () {
                        _imagePath = 'images/dog.png';
                      },
                    ),
                    GestureDetector(
                      child: Image.asset('images/fox.png', width: 80),
                      onTap: () {
                        _imagePath = 'images/fox.png';
                      },
                    ),
                    GestureDetector(
                      child: Image.asset('images/monkey.png', width: 80),
                      onTap: () {
                        _imagePath = 'images/monkey.png';
                      },
                    ),
                    GestureDetector(
                      child: Image.asset('images/pig.png', width: 80),
                      onTap: () {
                        _imagePath = 'images/pig.png';
                      },
                    ),
                    GestureDetector(
                      child: Image.asset('images/wolf.png', width: 80),
                      onTap: () {
                        _imagePath = 'images/wolf.png';
                      },
                    ),
                  ],
                ),
              ),
              ElevatedButton(onPressed: () {}, child: const Text('동물 추가하기'))
            ],
          ),
        ),
      ),
    );
  }
}
