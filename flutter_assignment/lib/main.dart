// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';
import 'dart:math';

import './buttontext.dart';
import './textrandom.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _text = const ["hola q tal", "hola muy bien", "miger prime"];

  var _textIndex = 1;

  random(min, max) {
    var rn = new Random();
    return min + rn.nextInt(max - min);
  }

  void _resetText() {
    setState(() {
      _textIndex = random(0, 3);
      print(_textIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    // var dummy = const ['Hello'];
    // dummy.add('Max');
    // print(dummy);
    // dummy = [];
    // questions = []; // does not work if questions is a const

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Test App JS'),
          ),
          body: Column(
            children: [TextRandom(_text[_textIndex]), ButtonText(_resetText)],
          )),
    );
  }
}
