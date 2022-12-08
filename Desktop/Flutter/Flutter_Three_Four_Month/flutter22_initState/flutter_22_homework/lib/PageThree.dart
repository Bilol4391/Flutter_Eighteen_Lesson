import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class PageThre extends StatelessWidget {
   PageThre({Key? key}) : super(key: key);

  int index = 0;

  @override
  Widget build(BuildContext context) {
    var selectedPage;
    var pageCount;
    return Scaffold(
      backgroundColor: Color(0xff2D3142),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 150, left: 70),
            child: Image.asset("assets/Saly-27.png"),
          ),
          Container(
            margin: EdgeInsets.only(left: 120, top: 70),
            child: Text("The Best Design", style: GoogleFonts.poppins(letterSpacing: .7,color: Colors.white, fontWeight: FontWeight.w600, fontSize: 24),),
          ),
          Container(
            margin: EdgeInsets.only(left: 160, top: 20),
            child: Text("Strategy! ✍️", style: GoogleFonts.poppins(letterSpacing: .7,color: Color(0xffE0E5EC), fontWeight: FontWeight.w500, fontSize: 24),),
          ),
          Container(
            width: 340,
            height: 80,
            margin: EdgeInsets.only(left: 50, top: 80),
            child: Text("Aenean eu lacinia ligula. Quisque eu risus erat. Aenean placerat sollicitudin lectus.", textAlign: TextAlign.center, style: GoogleFonts.poppins(color: Color(0xffE0E5EC), fontWeight: FontWeight.w400, fontSize: 16),),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 35,
                height: 5,
                margin: EdgeInsets.only(left: 180, top: 100),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(3)),
                    color: Color(0xffD6DFFF)
                ),
              ),
              Container(
                width: 35,
                height: 5,
                margin: EdgeInsets.only(left: 12, top: 100),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(3)),
                    color: Color(0xff5D81FD)
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 90, left: 105),child: Text("Next", textAlign: TextAlign.center, style: GoogleFonts.poppins(color: Color(0xffC8D2DE), fontWeight: FontWeight.w400, fontSize: 16),)),

            ],
          )
        ],
      ),
    );
  }
}
