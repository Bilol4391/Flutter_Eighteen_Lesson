import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_22_lesson/PageTwo.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  String text = '';
  bool isLoading = true;

  @override
  void initState() {
    isLoading = true;
    Future.delayed(Duration(seconds: 3), () {
      isLoading = false;
      Navigator.of(context).push(MaterialPageRoute(builder: (_)=>PageTwo()));
      setState(() {});
    });
    super.initState();
  }

  int _page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.01,
        title: Text(
          "News App",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
         Center(child: Container(margin: EdgeInsets.only(top: 300),child: const CircularProgressIndicator())),
        ],
      ),
      // bottomNavigationBar: CurvedNavigationBar(
      //   // key: _bottomNavigationKey,
      //   items: [
      //     Icon(Icons.add, size: 30),
      //     Icon(Icons.list, size: 30),
      //     Icon(Icons.compare_arrows, size: 30),
      //     Icon(Icons.settings, size: 30),
      //   ],
      //   onTap: (index) {
      //     setState(() {
      //       _page = index;
      //     });
      //   },
      // ),
    );
  }
}
