import 'package:flutter/material.dart';
import 'package:flutter_eighteen_homework/TaskOne.dart';

void main() {
  runApp(const MainFile());
}

class MainFile extends StatelessWidget {
  const MainFile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TaskOneOne(),
    );
  }
}
