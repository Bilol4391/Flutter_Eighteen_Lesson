import 'package:flutter/material.dart';
import 'package:fluttter_eighteen_lesson/PageOne.dart';
import 'package:fluttter_eighteen_lesson/TaskOne.dart';

void main() {
  runApp(const MainFIle());
}

class MainFIle extends StatelessWidget {
  const MainFIle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TaskOne(),
    );
  }
}
