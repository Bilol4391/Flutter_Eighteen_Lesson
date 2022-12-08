import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  bool isLoading = true;

  @override
  void initState() {
    isLoading = true;
    Future.delayed(Duration(seconds: 3), () {
      isLoading = false;
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
          SizedBox(
            height: 812,
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return isLoading
                      ? Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20, top: 10),
                              height: 130,
                              width: 140,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                color: Color(0xffEFEFEF),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 20,
                                  width: 100,
                                  margin: EdgeInsets.only(left: 20, bottom: 10),
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(6)),
                                    color: Color(0xffEFEFEF),
                                  ),
                                ),
                                Container(
                                  height: 20,
                                  width: 230,
                                  margin: EdgeInsets.only(left: 20, bottom: 10),
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(6)),
                                    color: Color(0xffEFEFEF),
                                  ),
                                ),
                                Container(
                                  height: 20,
                                  width: 230,
                                  margin: EdgeInsets.only(left: 20),
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(6)),
                                    color: Color(0xffEFEFEF),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 20,
                                      width: 100,
                                      margin:
                                          EdgeInsets.only(left: 20, top: 10),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(6)),
                                        color: Color(0xffEFEFEF),
                                      ),
                                    ),
                                    Container(
                                      height: 20,
                                      width: 100,
                                      margin:
                                          EdgeInsets.only(left: 20, top: 10),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(6)),
                                        color: Color(0xffEFEFEF),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        )
                      : Row(
                    children: [
                      Container(
                        width: 400,
                        height: 300,
                        color: Colors.red,
                      )
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
