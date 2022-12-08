import 'package:flutter/material.dart';
import 'package:flutter_22_homework/PageThree.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_page_view_indicator/flutter_page_view_indicator.dart';

class PageTwo extends StatefulWidget {
  PageTwo({Key? key}) : super(key: key);

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  bool isShimmer = true;
  int currentIndex = 0;
  @override
  void initState() {
    isShimmer = true;
    Future.delayed(Duration(seconds: 3), () {
      isShimmer = false;
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff2D3142),
        body: PageView(children: [
          isShimmer
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 70, top: 170),
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color(0xffEFEFEF),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 70, top: 40),
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color(0xffEFEFEF),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 80, top: 40),
                      height: 50,
                      width: 280,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color(0xffEFEFEF),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 70, top: 40),
                      height: 100,
                      width: 310,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color(0xffEFEFEF),
                      ),
                    ),
                  ],
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 120, left: 70),
                      child: Image.asset("assets/Saly-22.png"),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 110, top: 70),
                      child: Text(
                        "The Simple Way to",
                        style: GoogleFonts.poppins(
                            letterSpacing: .7,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 24),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 135, top: 20),
                      child: Text(
                        "find the best! 👌",
                        style: GoogleFonts.poppins(
                            letterSpacing: .7,
                            color: Color(0xffE0E5EC),
                            fontWeight: FontWeight.w500,
                            fontSize: 24),
                      ),
                    ),
                    Container(
                      width: 340,
                      height: 80,
                      margin: EdgeInsets.only(left: 50, top: 50),
                      child: Text(
                        "Aenean eu lacinia ligula. Quisque eu risus erat. Aenean placerat sollicitudin lectus.",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                            color: Color(0xffE0E5EC),
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 35,
                          height: 5,
                          margin: EdgeInsets.only(left: 180, top: 100),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(3)),
                              color: Color(0xff5D81FD)),
                        ),
                        Container(
                          width: 35,
                          height: 5,
                          margin: EdgeInsets.only(left: 12, top: 100),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(3)),
                              color: Color(0xffD6DFFF)),
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 90, left: 105),
                            child: Text(
                              "Next",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  color: Color(0xffC8D2DE),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                            )),
                      ],
                    )
                  ],
                ),
          PageThre(),
        ]));
  }
}
