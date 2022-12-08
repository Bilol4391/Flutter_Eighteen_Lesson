import 'dart:math';

import 'package:animated_icon/animate_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_22_homework/PageTwo.dart';
import 'package:animated_icon/animate_icon.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).push(MaterialPageRoute(builder: (_)=>PageTwo()));
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset("assets/Group 3.png"),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: AnimateIcon(
                key: UniqueKey(),
                onTap: () {},
                iconType: IconType.continueAnimation,
                height: 70,
                width: 70,
                color: Color(0xff2A4ECA),
                animateIcon: AnimateIcons.loading3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
