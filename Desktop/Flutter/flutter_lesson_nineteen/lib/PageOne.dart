import 'package:flutter/material.dart';
import 'package:flutter_lesson_nineteen/AddCard.dart';

class PageOne extends StatefulWidget {
  PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  List listOfCard = [
    "assets/MasterCard.png",
    "assets/VisaCard.png",
  ];

  List listOfText = ["**** 1234", "**** 4887"];

  int index = -1;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 30, top: 20),
                width: 250,
                height: 22,
                child: Text(
                  "Choose payment method",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 17, left: 92),
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.close,
                      color: Color(0xffC8D1E1),
                    )),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                "Existing cards".toUpperCase(),
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff8A8A8A),
                ),
              )),
          SizedBox(
            height: 22,
          ),



          SizedBox(
            height: 200,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: ListView.builder(
                  itemCount: listOfCard.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 50,
                      width: 372,
                      margin: EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                          color: Color(0xffF8F8FA),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          border: Border.all(
                              color: this.index == index
                                  ? Color(0xff334D8F)
                                  : Colors.transparent)),
                      child: InkWell(
                        child: Row(
                          children: [
                            Container(
                              child: Image.asset(
                                listOfCard[index],
                              ),
                              margin: EdgeInsets.only(left: 20),
                              width: 24,
                              height: 14,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 11),
                              child: Text(listOfText[index]),
                            ),
                          ],
                        ),
                        onTap: () {
                          if (this.index == index) {
                            this.index = -1;
                          } else {
                            this.index = index;
                          }

                          setState(() {});
                        },
                      ),
                    );
                  }),
            ),
          ),


          InkWell(
            onTap: (){
              showModalBottomSheet(backgroundColor: Colors.transparent, context: context, builder: (context){
                return AddCard();
              });
            },
            child: Container(
              width: 370,
              height: 50,
              margin: EdgeInsets.only(left: 30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  border: Border.all(color: Color(0xff334D8F), width: 1.5)),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 22),
                    child: Text(
                      "Add new payment method",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.5,
                        fontSize: 16,
                        color: Color(0xff334D8F),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Padding(
                        padding: EdgeInsets.only(left: 82),
                        child: Icon(Icons.add)),
                    color: Color(0xff334D8F),
                  )
                ],
              ),
            ),
          ),


          SizedBox(
            height: 22,
          ),
          InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              width: 370,
              height: 50,
              margin: EdgeInsets.only(left: 30),
              decoration: BoxDecoration(
                color: this.index != -1 ? Color(0xff334D8F) : Color(0xffC8D1E1),
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 145),
                    child: Text(
                      "Continue",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.5,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
