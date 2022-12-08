import 'package:flutter/material.dart';
import 'package:flutter_lesson_nineteen/PageOne.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: SizedBox(
            height: 50,
            child: Column(
              children: [
                ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                          backgroundColor: Colors.transparent,
                          context: context,
                          builder: (context) {
                            return PageOne();
                          });
                    },
                    child: Text("Button - 1")),
              ],
            ),
          ),
        ));
  }
}


