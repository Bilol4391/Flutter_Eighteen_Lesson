import 'package:flutter/material.dart';
import 'package:flutter_22_homework/PageThree.dart';
import 'package:flutter_22_homework/PageTwo.dart';

import 'PageOne.dart';

void main() {
  runApp(const MainFile());
}

class MainFile extends StatelessWidget {
  const MainFile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageOne(),
    );
  }
}
